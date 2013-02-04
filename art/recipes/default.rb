package 'vim-nox'
package 'exuberant-ctags'
package 'tmux'
package 'curl'
package 'g++'
package 'make'

script "install python brew" do
  interpreter "bash"
  user        "root"
  cwd         "/home/#{node[:user]}"
  code        <<-EOH
    if [ ! -d "/usr/local/pythonbrew" ]; then
      curl -kL -kL http://xrl.us/pythonbrewinstall | bash
    fi
    cd /usr/local/pythonbrew
    chmod a+w -R *
  EOH
end
