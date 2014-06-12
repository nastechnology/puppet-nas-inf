import 'macbasenode.pp'
import 'winbasenode.pp'
import 'studentmacnode.pp'
import 'admnodes.pp'
import 'linuxnodes.pp'
import 'nhsnodes.pp'
import 'nmsnodes.pp'
import 'cesnodes.pp'
import 'cdbnodes.pp'
import 'servernodes.pp'
import 'dhcp.pp'
import 'libnodes.pp'
import 'nctv.pp'
import 'mactest.pp'
import 'nodes.pp'
import 'yrbknodes.pp'
import 'buslabnodes.pp'
import 'deca.pp'
import 'teachersmacnode.pp'
import 'staffmacnode.pp'
import 'nmscart3.pp'
import 'nmscart2.pp'
import 'nmscart1.pp'
import 'cescart1.pp'
import 'cescart2.pp'
import 'wescart1.pp'
import 'wescart2.pp'
import 'oplab.pp'

$puppetserver = 'puppet.nacswildcats.org'



File { backup => 'main' }

filebucket { 'main':
  path    => false,
}
