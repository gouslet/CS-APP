
cmdline:     file format elf64-x86-64


Disassembly of section .init:

0000000000400498 <_init>:
  400498:	f3 0f 1e fa          	endbr64 
  40049c:	48 83 ec 08          	sub    $0x8,%rsp
  4004a0:	48 8b 05 49 0b 20 00 	mov    0x200b49(%rip),%rax        # 600ff0 <__gmon_start__>
  4004a7:	48 85 c0             	test   %rax,%rax
  4004aa:	74 02                	je     4004ae <_init+0x16>
  4004ac:	ff d0                	callq  *%rax
  4004ae:	48 83 c4 08          	add    $0x8,%rsp
  4004b2:	c3                   	retq   

Disassembly of section .plt:

00000000004004c0 <.plt>:
  4004c0:	ff 35 42 0b 20 00    	pushq  0x200b42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004c6:	ff 25 44 0b 20 00    	jmpq   *0x200b44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d0 <puts@plt>:
  4004d0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004d6:	68 00 00 00 00       	pushq  $0x0
  4004db:	e9 e0 ff ff ff       	jmpq   4004c0 <.plt>

00000000004004e0 <printf@plt>:
  4004e0:	ff 25 3a 0b 20 00    	jmpq   *0x200b3a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  4004e6:	68 01 00 00 00       	pushq  $0x1
  4004eb:	e9 d0 ff ff ff       	jmpq   4004c0 <.plt>

Disassembly of section .text:

00000000004004f0 <_start>:
  4004f0:	f3 0f 1e fa          	endbr64 
  4004f4:	31 ed                	xor    %ebp,%ebp
  4004f6:	49 89 d1             	mov    %rdx,%r9
  4004f9:	5e                   	pop    %rsi
  4004fa:	48 89 e2             	mov    %rsp,%rdx
  4004fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400501:	50                   	push   %rax
  400502:	54                   	push   %rsp
  400503:	49 c7 c0 80 06 40 00 	mov    $0x400680,%r8
  40050a:	48 c7 c1 10 06 40 00 	mov    $0x400610,%rcx
  400511:	48 c7 c7 d6 05 40 00 	mov    $0x4005d6,%rdi
  400518:	ff 15 ca 0a 20 00    	callq  *0x200aca(%rip)        # 600fe8 <__libc_start_main@GLIBC_2.2.5>
  40051e:	f4                   	hlt    

000000000040051f <.annobin_init.c>:
  40051f:	90                   	nop

0000000000400520 <_dl_relocate_static_pie>:
  400520:	f3 0f 1e fa          	endbr64 
  400524:	c3                   	retq   

0000000000400525 <.annobin__dl_relocate_static_pie.end>:
  400525:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40052c:	00 00 00 
  40052f:	90                   	nop

0000000000400530 <deregister_tm_clones>:
  400530:	48 8d 3d f9 0a 20 00 	lea    0x200af9(%rip),%rdi        # 601030 <__TMC_END__>
  400537:	48 8d 05 f2 0a 20 00 	lea    0x200af2(%rip),%rax        # 601030 <__TMC_END__>
  40053e:	48 39 f8             	cmp    %rdi,%rax
  400541:	74 15                	je     400558 <deregister_tm_clones+0x28>
  400543:	48 8b 05 96 0a 20 00 	mov    0x200a96(%rip),%rax        # 600fe0 <_ITM_deregisterTMCloneTable>
  40054a:	48 85 c0             	test   %rax,%rax
  40054d:	74 09                	je     400558 <deregister_tm_clones+0x28>
  40054f:	ff e0                	jmpq   *%rax
  400551:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400558:	c3                   	retq   
  400559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400560 <register_tm_clones>:
  400560:	48 8d 3d c9 0a 20 00 	lea    0x200ac9(%rip),%rdi        # 601030 <__TMC_END__>
  400567:	48 8d 35 c2 0a 20 00 	lea    0x200ac2(%rip),%rsi        # 601030 <__TMC_END__>
  40056e:	48 29 fe             	sub    %rdi,%rsi
  400571:	48 c1 fe 03          	sar    $0x3,%rsi
  400575:	48 89 f0             	mov    %rsi,%rax
  400578:	48 c1 e8 3f          	shr    $0x3f,%rax
  40057c:	48 01 c6             	add    %rax,%rsi
  40057f:	48 d1 fe             	sar    %rsi
  400582:	74 14                	je     400598 <register_tm_clones+0x38>
  400584:	48 8b 05 6d 0a 20 00 	mov    0x200a6d(%rip),%rax        # 600ff8 <_ITM_registerTMCloneTable>
  40058b:	48 85 c0             	test   %rax,%rax
  40058e:	74 08                	je     400598 <register_tm_clones+0x38>
  400590:	ff e0                	jmpq   *%rax
  400592:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400598:	c3                   	retq   
  400599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	f3 0f 1e fa          	endbr64 
  4005a4:	80 3d 81 0a 20 00 00 	cmpb   $0x0,0x200a81(%rip)        # 60102c <_edata>
  4005ab:	75 13                	jne    4005c0 <__do_global_dtors_aux+0x20>
  4005ad:	55                   	push   %rbp
  4005ae:	48 89 e5             	mov    %rsp,%rbp
  4005b1:	e8 7a ff ff ff       	callq  400530 <deregister_tm_clones>
  4005b6:	c6 05 6f 0a 20 00 01 	movb   $0x1,0x200a6f(%rip)        # 60102c <_edata>
  4005bd:	5d                   	pop    %rbp
  4005be:	c3                   	retq   
  4005bf:	90                   	nop
  4005c0:	c3                   	retq   
  4005c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005cd:	00 00 00 

00000000004005d0 <frame_dummy>:
  4005d0:	f3 0f 1e fa          	endbr64 
  4005d4:	eb 8a                	jmp    400560 <register_tm_clones>

00000000004005d6 <main>:
  4005d6:	48 83 ec 08          	sub    $0x8,%rsp
  4005da:	83 ff 01             	cmp    $0x1,%edi
  4005dd:	7e 13                	jle    4005f2 <main+0x1c>
  4005df:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4005e3:	e8 e8 fe ff ff       	callq  4004d0 <puts@plt>
  4005e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ed:	48 83 c4 08          	add    $0x8,%rsp
  4005f1:	c3                   	retq   
  4005f2:	48 8b 36             	mov    (%rsi),%rsi
  4005f5:	bf a8 06 40 00       	mov    $0x4006a8,%edi
  4005fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ff:	e8 dc fe ff ff       	callq  4004e0 <printf@plt>
  400604:	b8 01 00 00 00       	mov    $0x1,%eax
  400609:	eb e2                	jmp    4005ed <main+0x17>
  40060b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400610 <__libc_csu_init>:
  400610:	f3 0f 1e fa          	endbr64 
  400614:	41 57                	push   %r15
  400616:	49 89 d7             	mov    %rdx,%r15
  400619:	41 56                	push   %r14
  40061b:	49 89 f6             	mov    %rsi,%r14
  40061e:	41 55                	push   %r13
  400620:	41 89 fd             	mov    %edi,%r13d
  400623:	41 54                	push   %r12
  400625:	4c 8d 25 d4 07 20 00 	lea    0x2007d4(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  40062c:	55                   	push   %rbp
  40062d:	48 8d 2d d4 07 20 00 	lea    0x2007d4(%rip),%rbp        # 600e08 <__init_array_end>
  400634:	53                   	push   %rbx
  400635:	4c 29 e5             	sub    %r12,%rbp
  400638:	48 83 ec 08          	sub    $0x8,%rsp
  40063c:	e8 57 fe ff ff       	callq  400498 <_init>
  400641:	48 c1 fd 03          	sar    $0x3,%rbp
  400645:	74 1f                	je     400666 <__libc_csu_init+0x56>
  400647:	31 db                	xor    %ebx,%ebx
  400649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400650:	4c 89 fa             	mov    %r15,%rdx
  400653:	4c 89 f6             	mov    %r14,%rsi
  400656:	44 89 ef             	mov    %r13d,%edi
  400659:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40065d:	48 83 c3 01          	add    $0x1,%rbx
  400661:	48 39 dd             	cmp    %rbx,%rbp
  400664:	75 ea                	jne    400650 <__libc_csu_init+0x40>
  400666:	48 83 c4 08          	add    $0x8,%rsp
  40066a:	5b                   	pop    %rbx
  40066b:	5d                   	pop    %rbp
  40066c:	41 5c                	pop    %r12
  40066e:	41 5d                	pop    %r13
  400670:	41 5e                	pop    %r14
  400672:	41 5f                	pop    %r15
  400674:	c3                   	retq   

0000000000400675 <.annobin___libc_csu_fini.start>:
  400675:	90                   	nop
  400676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40067d:	00 00 00 

0000000000400680 <__libc_csu_fini>:
  400680:	f3 0f 1e fa          	endbr64 
  400684:	c3                   	retq   

Disassembly of section .fini:

0000000000400688 <_fini>:
  400688:	f3 0f 1e fa          	endbr64 
  40068c:	48 83 ec 08          	sub    $0x8,%rsp
  400690:	48 83 c4 08          	add    $0x8,%rsp
  400694:	c3                   	retq   
