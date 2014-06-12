# Marks MacBook Pro
node 'nas-tech-tc.nas.local' {
  $user = 'markmyers'

  class { 'roles::staff::tech':
    user => $user,
  }
}

# Chris MacBook Professional
node 'nas-tech-st.nas.local' {
  $user = 'crwenner'

  class { 'roles::staff::tech':
    user => $user,
  }
}
