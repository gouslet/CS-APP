
.\prog.exe：     文件格式 pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 25 34 00 00 	mov    0x3425(%rip),%rax        # 404440 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 26 34 00 00 	mov    0x3426(%rip),%rax        # 404450 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 29 34 00 00 	mov    0x3429(%rip),%rax        # 404460 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 ec 33 00 00 	mov    0x33ec(%rip),%rax        # 404430 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 9f 32 00 00 	mov    0x329f(%rip),%rax        # 4042f0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 78                	je     4010d0 <pre_c_init+0xc0>
  401058:	48 8b 05 c1 33 00 00 	mov    0x33c1(%rip),%rax        # 404420 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 57                	je     4010c2 <pre_c_init+0xb2>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 cb 1b 00 00       	callq  402c40 <__set_app_type>
  401075:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40107c:	e8 ff 0a 00 00       	callq  401b80 <_encode_pointer>
  401081:	48 8b 15 f8 32 00 00 	mov    0x32f8(%rip),%rdx        # 404380 <.refptr.__onexitend>
  401088:	48 89 02             	mov    %rax,(%rdx)
  40108b:	48 8b 15 de 32 00 00 	mov    0x32de(%rip),%rdx        # 404370 <.refptr.__onexitbegin>
  401092:	48 89 02             	mov    %rax,(%rdx)
  401095:	48 8b 05 44 33 00 00 	mov    0x3344(%rip),%rax        # 4043e0 <.refptr._fmode>
  40109c:	8b 10                	mov    (%rax),%edx
  40109e:	48 8b 05 7b 32 00 00 	mov    0x327b(%rip),%rax        # 404320 <.refptr.__imp__fmode>
  4010a5:	48 8b 00             	mov    (%rax),%rax
  4010a8:	89 10                	mov    %edx,(%rax)
  4010aa:	e8 c1 06 00 00       	callq  401770 <_setargv>
  4010af:	48 8b 05 ea 31 00 00 	mov    0x31ea(%rip),%rax        # 4042a0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010b6:	83 38 01             	cmpl   $0x1,(%rax)
  4010b9:	74 65                	je     401120 <pre_c_init+0x110>
  4010bb:	31 c0                	xor    %eax,%eax
  4010bd:	48 83 c4 28          	add    $0x28,%rsp
  4010c1:	c3                   	retq   
  4010c2:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010c7:	e8 74 1b 00 00       	callq  402c40 <__set_app_type>
  4010cc:	eb a7                	jmp    401075 <pre_c_init+0x65>
  4010ce:	66 90                	xchg   %ax,%ax
  4010d0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010d4:	48 01 c8             	add    %rcx,%rax
  4010d7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010dd:	0f 85 75 ff ff ff    	jne    401058 <pre_c_init+0x48>
  4010e3:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010e7:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010ec:	74 45                	je     401133 <pre_c_init+0x123>
  4010ee:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010f3:	0f 85 5f ff ff ff    	jne    401058 <pre_c_init+0x48>
  4010f9:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  401100:	0f 86 52 ff ff ff    	jbe    401058 <pre_c_init+0x48>
  401106:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  40110c:	31 d2                	xor    %edx,%edx
  40110e:	85 c9                	test   %ecx,%ecx
  401110:	0f 95 c2             	setne  %dl
  401113:	e9 40 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40111f:	00 
  401120:	48 8d 0d 49 09 00 00 	lea    0x949(%rip),%rcx        # 401a70 <_matherr>
  401127:	e8 34 09 00 00       	callq  401a60 <__mingw_setusermatherr>
  40112c:	31 c0                	xor    %eax,%eax
  40112e:	48 83 c4 28          	add    $0x28,%rsp
  401132:	c3                   	retq   
  401133:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401137:	0f 86 1b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40113d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401144:	31 d2                	xor    %edx,%edx
  401146:	45 85 c0             	test   %r8d,%r8d
  401149:	0f 95 c2             	setne  %dl
  40114c:	e9 07 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401151:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40115d:	00 00 00 

0000000000401160 <pre_cpp_init>:
  401160:	48 83 ec 38          	sub    $0x38,%rsp
  401164:	48 8b 05 a5 32 00 00 	mov    0x32a5(%rip),%rax        # 404410 <.refptr._newmode>
  40116b:	4c 8d 05 9e 5e 00 00 	lea    0x5e9e(%rip),%r8        # 407010 <envp>
  401172:	48 8d 15 9f 5e 00 00 	lea    0x5e9f(%rip),%rdx        # 407018 <argv>
  401179:	48 8d 0d a0 5e 00 00 	lea    0x5ea0(%rip),%rcx        # 407020 <argc>
  401180:	8b 00                	mov    (%rax),%eax
  401182:	89 05 78 5e 00 00    	mov    %eax,0x5e78(%rip)        # 407000 <__bss_start__>
  401188:	48 8d 05 71 5e 00 00 	lea    0x5e71(%rip),%rax        # 407000 <__bss_start__>
  40118f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401194:	48 8b 05 35 32 00 00 	mov    0x3235(%rip),%rax        # 4043d0 <.refptr._dowildcard>
  40119b:	44 8b 08             	mov    (%rax),%r9d
  40119e:	e8 b5 1a 00 00       	callq  402c58 <__getmainargs>
  4011a3:	90                   	nop
  4011a4:	48 83 c4 38          	add    $0x38,%rsp
  4011a8:	c3                   	retq   
  4011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004011b0 <__tmainCRTStartup>:
  4011b0:	41 55                	push   %r13
  4011b2:	41 54                	push   %r12
  4011b4:	55                   	push   %rbp
  4011b5:	57                   	push   %rdi
  4011b6:	56                   	push   %rsi
  4011b7:	53                   	push   %rbx
  4011b8:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  4011bf:	31 c0                	xor    %eax,%eax
  4011c1:	b9 0d 00 00 00       	mov    $0xd,%ecx
  4011c6:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4011cb:	48 89 d7             	mov    %rdx,%rdi
  4011ce:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011d1:	48 8b 3d 48 32 00 00 	mov    0x3248(%rip),%rdi        # 404420 <.refptr.mingw_app_type>
  4011d8:	44 8b 0f             	mov    (%rdi),%r9d
  4011db:	45 85 c9             	test   %r9d,%r9d
  4011de:	0f 85 ac 02 00 00    	jne    401490 <__tmainCRTStartup+0x2e0>
  4011e4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011eb:	00 00 
  4011ed:	48 8b 1d 5c 31 00 00 	mov    0x315c(%rip),%rbx        # 404350 <.refptr.__native_startup_lock>
  4011f4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	4c 8b 25 73 70 00 00 	mov    0x7073(%rip),%r12        # 408274 <__imp_Sleep>
  401201:	eb 11                	jmp    401214 <__tmainCRTStartup+0x64>
  401203:	48 39 c6             	cmp    %rax,%rsi
  401206:	0f 84 25 02 00 00    	je     401431 <__tmainCRTStartup+0x281>
  40120c:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  401211:	41 ff d4             	callq  *%r12
  401214:	48 89 e8             	mov    %rbp,%rax
  401217:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  40121c:	48 85 c0             	test   %rax,%rax
  40121f:	75 e2                	jne    401203 <__tmainCRTStartup+0x53>
  401221:	48 8b 35 38 31 00 00 	mov    0x3138(%rip),%rsi        # 404360 <.refptr.__native_startup_state>
  401228:	31 ed                	xor    %ebp,%ebp
  40122a:	8b 06                	mov    (%rsi),%eax
  40122c:	83 f8 01             	cmp    $0x1,%eax
  40122f:	0f 84 13 02 00 00    	je     401448 <__tmainCRTStartup+0x298>
  401235:	8b 06                	mov    (%rsi),%eax
  401237:	85 c0                	test   %eax,%eax
  401239:	0f 84 61 02 00 00    	je     4014a0 <__tmainCRTStartup+0x2f0>
  40123f:	c7 05 bb 5d 00 00 01 	movl   $0x1,0x5dbb(%rip)        # 407004 <has_cctor>
  401246:	00 00 00 
  401249:	8b 06                	mov    (%rsi),%eax
  40124b:	83 f8 01             	cmp    $0x1,%eax
  40124e:	0f 84 09 02 00 00    	je     40145d <__tmainCRTStartup+0x2ad>
  401254:	85 ed                	test   %ebp,%ebp
  401256:	0f 84 24 02 00 00    	je     401480 <__tmainCRTStartup+0x2d0>
  40125c:	48 8b 05 7d 30 00 00 	mov    0x307d(%rip),%rax        # 4042e0 <.refptr.__dyn_tls_init_callback>
  401263:	48 8b 00             	mov    (%rax),%rax
  401266:	48 85 c0             	test   %rax,%rax
  401269:	74 0c                	je     401277 <__tmainCRTStartup+0xc7>
  40126b:	45 31 c0             	xor    %r8d,%r8d
  40126e:	ba 02 00 00 00       	mov    $0x2,%edx
  401273:	31 c9                	xor    %ecx,%ecx
  401275:	ff d0                	callq  *%rax
  401277:	e8 e4 0a 00 00       	callq  401d60 <_pei386_runtime_relocator>
  40127c:	48 8d 0d 6d 10 00 00 	lea    0x106d(%rip),%rcx        # 4022f0 <_gnu_exception_handler>
  401283:	ff 15 e3 6f 00 00    	callq  *0x6fe3(%rip)        # 40826c <__imp_SetUnhandledExceptionFilter>
  401289:	48 8b 15 b0 30 00 00 	mov    0x30b0(%rip),%rdx        # 404340 <.refptr.__mingw_oldexcpt_handler>
  401290:	48 89 02             	mov    %rax,(%rdx)
  401293:	e8 68 0f 00 00       	callq  402200 <__mingw_init_ehandler>
  401298:	48 8d 0d 61 fd ff ff 	lea    -0x29f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40129f:	e8 dc 19 00 00       	callq  402c80 <_set_invalid_parameter_handler>
  4012a4:	e8 b7 08 00 00       	callq  401b60 <_fpreset>
  4012a9:	48 8b 05 40 30 00 00 	mov    0x3040(%rip),%rax        # 4042f0 <.refptr.__image_base__>
  4012b0:	48 89 05 b1 66 00 00 	mov    %rax,0x66b1(%rip)        # 407968 <__mingw_winmain_hInstance>
  4012b7:	48 8b 05 52 30 00 00 	mov    0x3052(%rip),%rax        # 404310 <.refptr.__imp__acmdln>
  4012be:	48 8b 00             	mov    (%rax),%rax
  4012c1:	48 8b 00             	mov    (%rax),%rax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 5e                	je     401327 <__tmainCRTStartup+0x177>
  4012c9:	31 c9                	xor    %ecx,%ecx
  4012cb:	eb 15                	jmp    4012e2 <__tmainCRTStartup+0x132>
  4012cd:	0f 1f 00             	nopl   (%rax)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 2c                	je     401300 <__tmainCRTStartup+0x150>
  4012d4:	83 e1 01             	and    $0x1,%ecx
  4012d7:	74 27                	je     401300 <__tmainCRTStartup+0x150>
  4012d9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012de:	48 83 c0 01          	add    $0x1,%rax
  4012e2:	0f b6 10             	movzbl (%rax),%edx
  4012e5:	80 fa 20             	cmp    $0x20,%dl
  4012e8:	7e e6                	jle    4012d0 <__tmainCRTStartup+0x120>
  4012ea:	41 89 c8             	mov    %ecx,%r8d
  4012ed:	41 83 f0 01          	xor    $0x1,%r8d
  4012f1:	80 fa 22             	cmp    $0x22,%dl
  4012f4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012f8:	eb e4                	jmp    4012de <__tmainCRTStartup+0x12e>
  4012fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401300:	84 d2                	test   %dl,%dl
  401302:	75 11                	jne    401315 <__tmainCRTStartup+0x165>
  401304:	eb 1a                	jmp    401320 <__tmainCRTStartup+0x170>
  401306:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40130d:	00 00 00 
  401310:	80 fa 20             	cmp    $0x20,%dl
  401313:	7f 0b                	jg     401320 <__tmainCRTStartup+0x170>
  401315:	48 83 c0 01          	add    $0x1,%rax
  401319:	0f b6 10             	movzbl (%rax),%edx
  40131c:	84 d2                	test   %dl,%dl
  40131e:	75 f0                	jne    401310 <__tmainCRTStartup+0x160>
  401320:	48 89 05 39 66 00 00 	mov    %rax,0x6639(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  401327:	44 8b 07             	mov    (%rdi),%r8d
  40132a:	45 85 c0             	test   %r8d,%r8d
  40132d:	74 19                	je     401348 <__tmainCRTStartup+0x198>
  40132f:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401334:	b8 0a 00 00 00       	mov    $0xa,%eax
  401339:	66 0f 45 44 24 60    	cmovne 0x60(%rsp),%ax
  40133f:	0f b7 c0             	movzwl %ax,%eax
  401342:	89 05 b8 1c 00 00    	mov    %eax,0x1cb8(%rip)        # 403000 <__data_start__>
  401348:	44 8b 25 d1 5c 00 00 	mov    0x5cd1(%rip),%r12d        # 407020 <argc>
  40134f:	45 8d 6c 24 01       	lea    0x1(%r12),%r13d
  401354:	4d 63 ed             	movslq %r13d,%r13
  401357:	49 c1 e5 03          	shl    $0x3,%r13
  40135b:	4c 89 e9             	mov    %r13,%rcx
  40135e:	e8 6d 18 00 00       	callq  402bd0 <malloc>
  401363:	45 85 e4             	test   %r12d,%r12d
  401366:	48 89 c5             	mov    %rax,%rbp
  401369:	48 8b 3d a8 5c 00 00 	mov    0x5ca8(%rip),%rdi        # 407018 <argv>
  401370:	0f 8e 48 01 00 00    	jle    4014be <__tmainCRTStartup+0x30e>
  401376:	31 db                	xor    %ebx,%ebx
  401378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40137f:	00 
  401380:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401384:	e8 27 18 00 00       	callq  402bb0 <strlen>
  401389:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40138d:	48 89 f1             	mov    %rsi,%rcx
  401390:	e8 3b 18 00 00       	callq  402bd0 <malloc>
  401395:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40139a:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  40139e:	49 89 f0             	mov    %rsi,%r8
  4013a1:	48 89 c1             	mov    %rax,%rcx
  4013a4:	48 83 c3 01          	add    $0x1,%rbx
  4013a8:	e8 1b 18 00 00       	callq  402bc8 <memcpy>
  4013ad:	41 39 dc             	cmp    %ebx,%r12d
  4013b0:	7f ce                	jg     401380 <__tmainCRTStartup+0x1d0>
  4013b2:	49 83 ed 08          	sub    $0x8,%r13
  4013b6:	4a c7 44 2d 00 00 00 	movq   $0x0,0x0(%rbp,%r13,1)
  4013bd:	00 00 
  4013bf:	48 89 2d 52 5c 00 00 	mov    %rbp,0x5c52(%rip)        # 407018 <argv>
  4013c6:	e8 75 03 00 00       	callq  401740 <__main>
  4013cb:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 404300 <.refptr.__imp___initenv>
  4013d2:	48 8b 15 37 5c 00 00 	mov    0x5c37(%rip),%rdx        # 407010 <envp>
  4013d9:	8b 0d 41 5c 00 00    	mov    0x5c41(%rip),%ecx        # 407020 <argc>
  4013df:	48 8b 00             	mov    (%rax),%rax
  4013e2:	48 89 10             	mov    %rdx,(%rax)
  4013e5:	4c 8b 05 24 5c 00 00 	mov    0x5c24(%rip),%r8        # 407010 <envp>
  4013ec:	48 8b 15 25 5c 00 00 	mov    0x5c25(%rip),%rdx        # 407018 <argv>
  4013f3:	e8 68 01 00 00       	callq  401560 <main>
  4013f8:	8b 0d 0a 5c 00 00    	mov    0x5c0a(%rip),%ecx        # 407008 <managedapp>
  4013fe:	89 05 08 5c 00 00    	mov    %eax,0x5c08(%rip)        # 40700c <mainret>
  401404:	85 c9                	test   %ecx,%ecx
  401406:	0f 84 ba 00 00 00    	je     4014c6 <__tmainCRTStartup+0x316>
  40140c:	8b 15 f2 5b 00 00    	mov    0x5bf2(%rip),%edx        # 407004 <has_cctor>
  401412:	85 d2                	test   %edx,%edx
  401414:	75 0b                	jne    401421 <__tmainCRTStartup+0x271>
  401416:	e8 0d 18 00 00       	callq  402c28 <_cexit>
  40141b:	8b 05 eb 5b 00 00    	mov    0x5beb(%rip),%eax        # 40700c <mainret>
  401421:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401428:	5b                   	pop    %rbx
  401429:	5e                   	pop    %rsi
  40142a:	5f                   	pop    %rdi
  40142b:	5d                   	pop    %rbp
  40142c:	41 5c                	pop    %r12
  40142e:	41 5d                	pop    %r13
  401430:	c3                   	retq   
  401431:	48 8b 35 28 2f 00 00 	mov    0x2f28(%rip),%rsi        # 404360 <.refptr.__native_startup_state>
  401438:	bd 01 00 00 00       	mov    $0x1,%ebp
  40143d:	8b 06                	mov    (%rsi),%eax
  40143f:	83 f8 01             	cmp    $0x1,%eax
  401442:	0f 85 ed fd ff ff    	jne    401235 <__tmainCRTStartup+0x85>
  401448:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40144d:	e8 de 17 00 00       	callq  402c30 <_amsg_exit>
  401452:	8b 06                	mov    (%rsi),%eax
  401454:	83 f8 01             	cmp    $0x1,%eax
  401457:	0f 85 f7 fd ff ff    	jne    401254 <__tmainCRTStartup+0xa4>
  40145d:	48 8b 15 3c 2f 00 00 	mov    0x2f3c(%rip),%rdx        # 4043a0 <.refptr.__xc_z>
  401464:	48 8b 0d 25 2f 00 00 	mov    0x2f25(%rip),%rcx        # 404390 <.refptr.__xc_a>
  40146b:	e8 b0 17 00 00       	callq  402c20 <_initterm>
  401470:	85 ed                	test   %ebp,%ebp
  401472:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401478:	0f 85 de fd ff ff    	jne    40125c <__tmainCRTStartup+0xac>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	31 c0                	xor    %eax,%eax
  401482:	48 87 03             	xchg   %rax,(%rbx)
  401485:	e9 d2 fd ff ff       	jmpq   40125c <__tmainCRTStartup+0xac>
  40148a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401490:	48 89 d1             	mov    %rdx,%rcx
  401493:	ff 15 83 6d 00 00    	callq  *0x6d83(%rip)        # 40821c <__imp_GetStartupInfoA>
  401499:	e9 46 fd ff ff       	jmpq   4011e4 <__tmainCRTStartup+0x34>
  40149e:	66 90                	xchg   %ax,%ax
  4014a0:	48 8b 15 19 2f 00 00 	mov    0x2f19(%rip),%rdx        # 4043c0 <.refptr.__xi_z>
  4014a7:	48 8b 0d 02 2f 00 00 	mov    0x2f02(%rip),%rcx        # 4043b0 <.refptr.__xi_a>
  4014ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014b4:	e8 67 17 00 00       	callq  402c20 <_initterm>
  4014b9:	e9 8b fd ff ff       	jmpq   401249 <__tmainCRTStartup+0x99>
  4014be:	45 31 ed             	xor    %r13d,%r13d
  4014c1:	e9 f0 fe ff ff       	jmpq   4013b6 <__tmainCRTStartup+0x206>
  4014c6:	89 c1                	mov    %eax,%ecx
  4014c8:	e8 23 17 00 00       	callq  402bf0 <exit>
  4014cd:	90                   	nop
  4014ce:	66 90                	xchg   %ax,%ax

00000000004014d0 <WinMainCRTStartup>:
  4014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014d4 <.l_startw>:
  4014d4:	48 8b 05 45 2f 00 00 	mov    0x2f45(%rip),%rax        # 404420 <.refptr.mingw_app_type>
  4014db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014e1:	e8 9a 02 00 00       	callq  401780 <__security_init_cookie>
  4014e6:	e8 c5 fc ff ff       	callq  4011b0 <__tmainCRTStartup>
  4014eb:	90                   	nop

00000000004014ec <.l_endw>:
  4014ec:	90                   	nop
  4014ed:	48 83 c4 28          	add    $0x28,%rsp
  4014f1:	c3                   	retq   
  4014f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014fd:	00 00 00 

0000000000401500 <mainCRTStartup>:
  401500:	48 83 ec 28          	sub    $0x28,%rsp

0000000000401504 <.l_start>:
  401504:	48 8b 05 15 2f 00 00 	mov    0x2f15(%rip),%rax        # 404420 <.refptr.mingw_app_type>
  40150b:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401511:	e8 6a 02 00 00       	callq  401780 <__security_init_cookie>
  401516:	e8 95 fc ff ff       	callq  4011b0 <__tmainCRTStartup>
  40151b:	90                   	nop

000000000040151c <.l_end>:
  40151c:	90                   	nop
  40151d:	48 83 c4 28          	add    $0x28,%rsp
  401521:	c3                   	retq   
  401522:	90                   	nop
  401523:	90                   	nop
  401524:	90                   	nop
  401525:	90                   	nop
  401526:	90                   	nop
  401527:	90                   	nop
  401528:	90                   	nop
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	55                   	push   %rbp
  401531:	48 89 e5             	mov    %rsp,%rbp
  401534:	48 8d 0d 15 00 00 00 	lea    0x15(%rip),%rcx        # 401550 <__gcc_deregister_frame>
  40153b:	5d                   	pop    %rbp
  40153c:	e9 2f 01 00 00       	jmpq   401670 <atexit>
  401541:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40154d:	00 00 00 

0000000000401550 <__gcc_deregister_frame>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	5d                   	pop    %rbp
  401555:	c3                   	retq   
  401556:	90                   	nop
  401557:	90                   	nop
  401558:	90                   	nop
  401559:	90                   	nop
  40155a:	90                   	nop
  40155b:	90                   	nop
  40155c:	90                   	nop
  40155d:	90                   	nop
  40155e:	90                   	nop
  40155f:	90                   	nop

0000000000401560 <main>:
  401560:	48 83 ec 38          	sub    $0x38,%rsp
  401564:	e8 d7 01 00 00       	callq  401740 <__main>
  401569:	4c 8d 44 24 2c       	lea    0x2c(%rsp),%r8
  40156e:	ba 03 00 00 00       	mov    $0x3,%edx
  401573:	b9 02 00 00 00       	mov    $0x2,%ecx
  401578:	e8 23 00 00 00       	callq  4015a0 <multstore>
  40157d:	8b 54 24 2c          	mov    0x2c(%rsp),%edx
  401581:	48 8d 0d 78 2a 00 00 	lea    0x2a78(%rip),%rcx        # 404000 <.rdata>
  401588:	e8 33 16 00 00       	callq  402bc0 <printf>
  40158d:	b8 00 00 00 00       	mov    $0x0,%eax
  401592:	48 83 c4 38          	add    $0x38,%rsp
  401596:	c3                   	retq   

0000000000401597 <mult2>:
  401597:	89 c8                	mov    %ecx,%eax
  401599:	0f af c2             	imul   %edx,%eax
  40159c:	c3                   	retq   
  40159d:	90                   	nop
  40159e:	90                   	nop
  40159f:	90                   	nop

00000000004015a0 <multstore>:
  4015a0:	53                   	push   %rbx
  4015a1:	48 83 ec 20          	sub    $0x20,%rsp
  4015a5:	4c 89 c3             	mov    %r8,%rbx
  4015a8:	e8 ea ff ff ff       	callq  401597 <mult2>
  4015ad:	89 03                	mov    %eax,(%rbx)
  4015af:	48 83 c4 20          	add    $0x20,%rsp
  4015b3:	5b                   	pop    %rbx
  4015b4:	c3                   	retq   
  4015b5:	90                   	nop
  4015b6:	90                   	nop
  4015b7:	90                   	nop
  4015b8:	90                   	nop
  4015b9:	90                   	nop
  4015ba:	90                   	nop
  4015bb:	90                   	nop
  4015bc:	90                   	nop
  4015bd:	90                   	nop
  4015be:	90                   	nop
  4015bf:	90                   	nop

00000000004015c0 <mingw_onexit>:
  4015c0:	53                   	push   %rbx
  4015c1:	48 83 ec 30          	sub    $0x30,%rsp
  4015c5:	48 89 cb             	mov    %rcx,%rbx
  4015c8:	48 8b 0d a1 63 00 00 	mov    0x63a1(%rip),%rcx        # 407970 <__onexitbegin>
  4015cf:	e8 9c 05 00 00       	callq  401b70 <_decode_pointer>
  4015d4:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4015d8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4015dd:	74 76                	je     401655 <mingw_onexit+0x95>
  4015df:	b9 08 00 00 00       	mov    $0x8,%ecx
  4015e4:	e8 2f 16 00 00       	callq  402c18 <_lock>
  4015e9:	48 8b 0d 80 63 00 00 	mov    0x6380(%rip),%rcx        # 407970 <__onexitbegin>
  4015f0:	e8 7b 05 00 00       	callq  401b70 <_decode_pointer>
  4015f5:	48 8b 0d 7c 63 00 00 	mov    0x637c(%rip),%rcx        # 407978 <__onexitend>
  4015fc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401601:	e8 6a 05 00 00       	callq  401b70 <_decode_pointer>
  401606:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40160b:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
  401610:	48 89 d9             	mov    %rbx,%rcx
  401613:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401618:	e8 43 16 00 00       	callq  402c60 <__dllonexit>
  40161d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401622:	48 89 c3             	mov    %rax,%rbx
  401625:	e8 56 05 00 00       	callq  401b80 <_encode_pointer>
  40162a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40162f:	48 89 05 3a 63 00 00 	mov    %rax,0x633a(%rip)        # 407970 <__onexitbegin>
  401636:	e8 45 05 00 00       	callq  401b80 <_encode_pointer>
  40163b:	b9 08 00 00 00       	mov    $0x8,%ecx
  401640:	48 89 05 31 63 00 00 	mov    %rax,0x6331(%rip)        # 407978 <__onexitend>
  401647:	e8 bc 15 00 00       	callq  402c08 <_unlock>
  40164c:	48 89 d8             	mov    %rbx,%rax
  40164f:	48 83 c4 30          	add    $0x30,%rsp
  401653:	5b                   	pop    %rbx
  401654:	c3                   	retq   
  401655:	48 8b 05 d4 2c 00 00 	mov    0x2cd4(%rip),%rax        # 404330 <.refptr.__imp__onexit>
  40165c:	48 89 d9             	mov    %rbx,%rcx
  40165f:	ff 10                	callq  *(%rax)
  401661:	48 89 c3             	mov    %rax,%rbx
  401664:	48 89 d8             	mov    %rbx,%rax
  401667:	48 83 c4 30          	add    $0x30,%rsp
  40166b:	5b                   	pop    %rbx
  40166c:	c3                   	retq   
  40166d:	0f 1f 00             	nopl   (%rax)

0000000000401670 <atexit>:
  401670:	48 83 ec 28          	sub    $0x28,%rsp
  401674:	e8 47 ff ff ff       	callq  4015c0 <mingw_onexit>
  401679:	48 85 c0             	test   %rax,%rax
  40167c:	0f 94 c0             	sete   %al
  40167f:	0f b6 c0             	movzbl %al,%eax
  401682:	f7 d8                	neg    %eax
  401684:	48 83 c4 28          	add    $0x28,%rsp
  401688:	c3                   	retq   
  401689:	90                   	nop
  40168a:	90                   	nop
  40168b:	90                   	nop
  40168c:	90                   	nop
  40168d:	90                   	nop
  40168e:	90                   	nop
  40168f:	90                   	nop

0000000000401690 <__do_global_dtors>:
  401690:	48 83 ec 28          	sub    $0x28,%rsp
  401694:	48 8b 05 75 19 00 00 	mov    0x1975(%rip),%rax        # 403010 <p.92457>
  40169b:	48 8b 00             	mov    (%rax),%rax
  40169e:	48 85 c0             	test   %rax,%rax
  4016a1:	74 1d                	je     4016c0 <__do_global_dtors+0x30>
  4016a3:	ff d0                	callq  *%rax
  4016a5:	48 8b 05 64 19 00 00 	mov    0x1964(%rip),%rax        # 403010 <p.92457>
  4016ac:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4016b0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4016b4:	48 89 15 55 19 00 00 	mov    %rdx,0x1955(%rip)        # 403010 <p.92457>
  4016bb:	48 85 c0             	test   %rax,%rax
  4016be:	75 e3                	jne    4016a3 <__do_global_dtors+0x13>
  4016c0:	48 83 c4 28          	add    $0x28,%rsp
  4016c4:	c3                   	retq   
  4016c5:	90                   	nop
  4016c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016cd:	00 00 00 

00000000004016d0 <__do_global_ctors>:
  4016d0:	56                   	push   %rsi
  4016d1:	53                   	push   %rbx
  4016d2:	48 83 ec 28          	sub    $0x28,%rsp
  4016d6:	48 8b 0d d3 2b 00 00 	mov    0x2bd3(%rip),%rcx        # 4042b0 <.refptr.__CTOR_LIST__>
  4016dd:	48 8b 11             	mov    (%rcx),%rdx
  4016e0:	83 fa ff             	cmp    $0xffffffff,%edx
  4016e3:	89 d0                	mov    %edx,%eax
  4016e5:	74 39                	je     401720 <__do_global_ctors+0x50>
  4016e7:	85 c0                	test   %eax,%eax
  4016e9:	74 20                	je     40170b <__do_global_ctors+0x3b>
  4016eb:	89 c2                	mov    %eax,%edx
  4016ed:	83 e8 01             	sub    $0x1,%eax
  4016f0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4016f4:	48 29 c2             	sub    %rax,%rdx
  4016f7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4016fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401700:	ff 13                	callq  *(%rbx)
  401702:	48 83 eb 08          	sub    $0x8,%rbx
  401706:	48 39 f3             	cmp    %rsi,%rbx
  401709:	75 f5                	jne    401700 <__do_global_ctors+0x30>
  40170b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401690 <__do_global_dtors>
  401712:	48 83 c4 28          	add    $0x28,%rsp
  401716:	5b                   	pop    %rbx
  401717:	5e                   	pop    %rsi
  401718:	e9 53 ff ff ff       	jmpq   401670 <atexit>
  40171d:	0f 1f 00             	nopl   (%rax)
  401720:	31 c0                	xor    %eax,%eax
  401722:	eb 02                	jmp    401726 <__do_global_ctors+0x56>
  401724:	89 d0                	mov    %edx,%eax
  401726:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40172a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40172f:	4c 89 c2             	mov    %r8,%rdx
  401732:	75 f0                	jne    401724 <__do_global_ctors+0x54>
  401734:	eb b1                	jmp    4016e7 <__do_global_ctors+0x17>
  401736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40173d:	00 00 00 

0000000000401740 <__main>:
  401740:	8b 05 ea 58 00 00    	mov    0x58ea(%rip),%eax        # 407030 <initialized>
  401746:	85 c0                	test   %eax,%eax
  401748:	74 06                	je     401750 <__main+0x10>
  40174a:	f3 c3                	repz retq 
  40174c:	0f 1f 40 00          	nopl   0x0(%rax)
  401750:	c7 05 d6 58 00 00 01 	movl   $0x1,0x58d6(%rip)        # 407030 <initialized>
  401757:	00 00 00 
  40175a:	e9 71 ff ff ff       	jmpq   4016d0 <__do_global_ctors>
  40175f:	90                   	nop

0000000000401760 <my_lconv_init>:
  401760:	48 ff 25 6d 6b 00 00 	rex.W jmpq *0x6b6d(%rip)        # 4082d4 <__imp___lconv_init>
  401767:	90                   	nop
  401768:	90                   	nop
  401769:	90                   	nop
  40176a:	90                   	nop
  40176b:	90                   	nop
  40176c:	90                   	nop
  40176d:	90                   	nop
  40176e:	90                   	nop
  40176f:	90                   	nop

0000000000401770 <_setargv>:
  401770:	31 c0                	xor    %eax,%eax
  401772:	c3                   	retq   
  401773:	90                   	nop
  401774:	90                   	nop
  401775:	90                   	nop
  401776:	90                   	nop
  401777:	90                   	nop
  401778:	90                   	nop
  401779:	90                   	nop
  40177a:	90                   	nop
  40177b:	90                   	nop
  40177c:	90                   	nop
  40177d:	90                   	nop
  40177e:	90                   	nop
  40177f:	90                   	nop

0000000000401780 <__security_init_cookie>:
  401780:	41 54                	push   %r12
  401782:	55                   	push   %rbp
  401783:	57                   	push   %rdi
  401784:	56                   	push   %rsi
  401785:	53                   	push   %rbx
  401786:	48 83 ec 40          	sub    $0x40,%rsp
  40178a:	48 8b 1d ef 18 00 00 	mov    0x18ef(%rip),%rbx        # 403080 <__security_cookie>
  401791:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401798:	2b 00 00 
  40179b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4017a2:	00 00 
  4017a4:	48 39 c3             	cmp    %rax,%rbx
  4017a7:	74 17                	je     4017c0 <__security_init_cookie+0x40>
  4017a9:	48 f7 d3             	not    %rbx
  4017ac:	48 89 1d dd 18 00 00 	mov    %rbx,0x18dd(%rip)        # 403090 <__security_cookie_complement>
  4017b3:	48 83 c4 40          	add    $0x40,%rsp
  4017b7:	5b                   	pop    %rbx
  4017b8:	5e                   	pop    %rsi
  4017b9:	5f                   	pop    %rdi
  4017ba:	5d                   	pop    %rbp
  4017bb:	41 5c                	pop    %r12
  4017bd:	c3                   	retq   
  4017be:	66 90                	xchg   %ax,%ax
  4017c0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4017c5:	ff 15 59 6a 00 00    	callq  *0x6a59(%rip)        # 408224 <__imp_GetSystemTimeAsFileTime>
  4017cb:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  4017d0:	ff 15 2e 6a 00 00    	callq  *0x6a2e(%rip)        # 408204 <__imp_GetCurrentProcessId>
  4017d6:	41 89 c4             	mov    %eax,%r12d
  4017d9:	ff 15 2d 6a 00 00    	callq  *0x6a2d(%rip)        # 40820c <__imp_GetCurrentThreadId>
  4017df:	89 c5                	mov    %eax,%ebp
  4017e1:	ff 15 45 6a 00 00    	callq  *0x6a45(%rip)        # 40822c <__imp_GetTickCount>
  4017e7:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  4017ec:	89 c6                	mov    %eax,%esi
  4017ee:	ff 15 50 6a 00 00    	callq  *0x6a50(%rip)        # 408244 <__imp_QueryPerformanceCounter>
  4017f4:	48 33 7c 24 30       	xor    0x30(%rsp),%rdi
  4017f9:	44 89 e0             	mov    %r12d,%eax
  4017fc:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401803:	ff 00 00 
  401806:	48 31 f8             	xor    %rdi,%rax
  401809:	89 ef                	mov    %ebp,%edi
  40180b:	48 31 c7             	xor    %rax,%rdi
  40180e:	89 f0                	mov    %esi,%eax
  401810:	48 31 f8             	xor    %rdi,%rax
  401813:	48 21 d0             	and    %rdx,%rax
  401816:	48 39 d8             	cmp    %rbx,%rax
  401819:	74 25                	je     401840 <__security_init_cookie+0xc0>
  40181b:	48 89 c2             	mov    %rax,%rdx
  40181e:	48 f7 d2             	not    %rdx
  401821:	48 89 05 58 18 00 00 	mov    %rax,0x1858(%rip)        # 403080 <__security_cookie>
  401828:	48 89 15 61 18 00 00 	mov    %rdx,0x1861(%rip)        # 403090 <__security_cookie_complement>
  40182f:	48 83 c4 40          	add    $0x40,%rsp
  401833:	5b                   	pop    %rbx
  401834:	5e                   	pop    %rsi
  401835:	5f                   	pop    %rdi
  401836:	5d                   	pop    %rbp
  401837:	41 5c                	pop    %r12
  401839:	c3                   	retq   
  40183a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401840:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401847:	d4 ff ff 
  40184a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401851:	2b 00 00 
  401854:	eb cb                	jmp    401821 <__security_init_cookie+0xa1>
  401856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40185d:	00 00 00 

0000000000401860 <__report_gsfailure>:
  401860:	55                   	push   %rbp
  401861:	56                   	push   %rsi
  401862:	53                   	push   %rbx
  401863:	48 89 e5             	mov    %rsp,%rbp
  401866:	48 83 ec 70          	sub    $0x70,%rsp
  40186a:	48 89 ce             	mov    %rcx,%rsi
  40186d:	48 8d 0d ec 57 00 00 	lea    0x57ec(%rip),%rcx        # 407060 <GS_ContextRecord>
  401874:	ff 15 da 69 00 00    	callq  *0x69da(%rip)        # 408254 <__imp_RtlCaptureContext>
  40187a:	48 8b 1d d7 58 00 00 	mov    0x58d7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401881:	45 31 c0             	xor    %r8d,%r8d
  401884:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401888:	48 89 d9             	mov    %rbx,%rcx
  40188b:	ff 15 cb 69 00 00    	callq  *0x69cb(%rip)        # 40825c <__imp_RtlLookupFunctionEntry>
  401891:	48 85 c0             	test   %rax,%rax
  401894:	49 89 c1             	mov    %rax,%r9
  401897:	0f 84 a3 00 00 00    	je     401940 <__report_gsfailure+0xe0>
  40189d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4018a1:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4018a8:	00 00 
  4018aa:	49 89 d8             	mov    %rbx,%r8
  4018ad:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4018b1:	31 c9                	xor    %ecx,%ecx
  4018b3:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4018b8:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4018bc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4018c1:	48 8d 05 98 57 00 00 	lea    0x5798(%rip),%rax        # 407060 <GS_ContextRecord>
  4018c8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4018cd:	ff 15 91 69 00 00    	callq  *0x6991(%rip)        # 408264 <__imp_RtlVirtualUnwind>
  4018d3:	48 8b 05 7e 58 00 00 	mov    0x587e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4018da:	31 c9                	xor    %ecx,%ecx
  4018dc:	48 89 35 fd 57 00 00 	mov    %rsi,0x57fd(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4018e3:	c7 05 53 5c 00 00 09 	movl   $0xc0000409,0x5c53(%rip)        # 407540 <GS_ExceptionRecord>
  4018ea:	04 00 c0 
  4018ed:	c7 05 4d 5c 00 00 01 	movl   $0x1,0x5c4d(%rip)        # 407544 <GS_ExceptionRecord+0x4>
  4018f4:	00 00 00 
  4018f7:	48 89 05 52 5c 00 00 	mov    %rax,0x5c52(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4018fe:	48 8b 05 7b 17 00 00 	mov    0x177b(%rip),%rax        # 403080 <__security_cookie>
  401905:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401909:	48 8b 05 80 17 00 00 	mov    0x1780(%rip),%rax        # 403090 <__security_cookie_complement>
  401910:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401914:	ff 15 52 69 00 00    	callq  *0x6952(%rip)        # 40826c <__imp_SetUnhandledExceptionFilter>
  40191a:	48 8d 0d ef 26 00 00 	lea    0x26ef(%rip),%rcx        # 404010 <GS_ExceptionPointers>
  401921:	ff 15 65 69 00 00    	callq  *0x6965(%rip)        # 40828c <__imp_UnhandledExceptionFilter>
  401927:	ff 15 cf 68 00 00    	callq  *0x68cf(%rip)        # 4081fc <__imp_GetCurrentProcess>
  40192d:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  401932:	48 89 c1             	mov    %rax,%rcx
  401935:	ff 15 41 69 00 00    	callq  *0x6941(%rip)        # 40827c <__imp_TerminateProcess>
  40193b:	e8 c0 12 00 00       	callq  402c00 <abort>
  401940:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401944:	48 89 05 0d 58 00 00 	mov    %rax,0x580d(%rip)        # 407158 <GS_ContextRecord+0xf8>
  40194b:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40194f:	48 89 05 a2 57 00 00 	mov    %rax,0x57a2(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401956:	e9 78 ff ff ff       	jmpq   4018d3 <__report_gsfailure+0x73>
  40195b:	90                   	nop
  40195c:	90                   	nop
  40195d:	90                   	nop
  40195e:	90                   	nop
  40195f:	90                   	nop

0000000000401960 <__dyn_tls_dtor>:
  401960:	48 83 ec 28          	sub    $0x28,%rsp
  401964:	83 fa 03             	cmp    $0x3,%edx
  401967:	74 17                	je     401980 <__dyn_tls_dtor+0x20>
  401969:	85 d2                	test   %edx,%edx
  40196b:	74 13                	je     401980 <__dyn_tls_dtor+0x20>
  40196d:	b8 01 00 00 00       	mov    $0x1,%eax
  401972:	48 83 c4 28          	add    $0x28,%rsp
  401976:	c3                   	retq   
  401977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40197e:	00 00 
  401980:	e8 db 0c 00 00       	callq  402660 <__mingw_TLScallback>
  401985:	b8 01 00 00 00       	mov    $0x1,%eax
  40198a:	48 83 c4 28          	add    $0x28,%rsp
  40198e:	c3                   	retq   
  40198f:	90                   	nop

0000000000401990 <__dyn_tls_init>:
  401990:	56                   	push   %rsi
  401991:	53                   	push   %rbx
  401992:	48 83 ec 28          	sub    $0x28,%rsp
  401996:	48 8b 05 f3 28 00 00 	mov    0x28f3(%rip),%rax        # 404290 <.refptr._CRT_MT>
  40199d:	83 38 02             	cmpl   $0x2,(%rax)
  4019a0:	74 06                	je     4019a8 <__dyn_tls_init+0x18>
  4019a2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4019a8:	83 fa 02             	cmp    $0x2,%edx
  4019ab:	74 13                	je     4019c0 <__dyn_tls_init+0x30>
  4019ad:	83 fa 01             	cmp    $0x1,%edx
  4019b0:	74 40                	je     4019f2 <__dyn_tls_init+0x62>
  4019b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b7:	48 83 c4 28          	add    $0x28,%rsp
  4019bb:	5b                   	pop    %rbx
  4019bc:	5e                   	pop    %rsi
  4019bd:	c3                   	retq   
  4019be:	66 90                	xchg   %ax,%ax
  4019c0:	48 8d 1d 99 76 00 00 	lea    0x7699(%rip),%rbx        # 409060 <__xd_z>
  4019c7:	48 8d 35 92 76 00 00 	lea    0x7692(%rip),%rsi        # 409060 <__xd_z>
  4019ce:	48 39 de             	cmp    %rbx,%rsi
  4019d1:	74 df                	je     4019b2 <__dyn_tls_init+0x22>
  4019d3:	48 8b 03             	mov    (%rbx),%rax
  4019d6:	48 85 c0             	test   %rax,%rax
  4019d9:	74 02                	je     4019dd <__dyn_tls_init+0x4d>
  4019db:	ff d0                	callq  *%rax
  4019dd:	48 83 c3 08          	add    $0x8,%rbx
  4019e1:	48 39 de             	cmp    %rbx,%rsi
  4019e4:	75 ed                	jne    4019d3 <__dyn_tls_init+0x43>
  4019e6:	b8 01 00 00 00       	mov    $0x1,%eax
  4019eb:	48 83 c4 28          	add    $0x28,%rsp
  4019ef:	5b                   	pop    %rbx
  4019f0:	5e                   	pop    %rsi
  4019f1:	c3                   	retq   
  4019f2:	e8 69 0c 00 00       	callq  402660 <__mingw_TLScallback>
  4019f7:	eb b9                	jmp    4019b2 <__dyn_tls_init+0x22>
  4019f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401a00 <__tlregdtor>:
  401a00:	31 c0                	xor    %eax,%eax
  401a02:	c3                   	retq   
  401a03:	90                   	nop
  401a04:	90                   	nop
  401a05:	90                   	nop
  401a06:	90                   	nop
  401a07:	90                   	nop
  401a08:	90                   	nop
  401a09:	90                   	nop
  401a0a:	90                   	nop
  401a0b:	90                   	nop
  401a0c:	90                   	nop
  401a0d:	90                   	nop
  401a0e:	90                   	nop
  401a0f:	90                   	nop

0000000000401a10 <__mingw_raise_matherr>:
  401a10:	48 83 ec 58          	sub    $0x58,%rsp
  401a14:	48 8b 05 e5 5b 00 00 	mov    0x5be5(%rip),%rax        # 407600 <stUserMathErr>
  401a1b:	48 85 c0             	test   %rax,%rax
  401a1e:	74 2c                	je     401a4c <__mingw_raise_matherr+0x3c>
  401a20:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401a27:	00 00 
  401a29:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401a2d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401a32:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401a37:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401a3d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401a43:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401a49:	ff d0                	callq  *%rax
  401a4b:	90                   	nop
  401a4c:	48 83 c4 58          	add    $0x58,%rsp
  401a50:	c3                   	retq   
  401a51:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a5d:	00 00 00 

0000000000401a60 <__mingw_setusermatherr>:
  401a60:	48 89 0d 99 5b 00 00 	mov    %rcx,0x5b99(%rip)        # 407600 <stUserMathErr>
  401a67:	e9 cc 11 00 00       	jmpq   402c38 <__setusermatherr>
  401a6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a70 <_matherr>:
  401a70:	56                   	push   %rsi
  401a71:	53                   	push   %rbx
  401a72:	48 83 ec 78          	sub    $0x78,%rsp
  401a76:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401a7b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401a80:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401a86:	83 39 06             	cmpl   $0x6,(%rcx)
  401a89:	0f 87 c1 00 00 00    	ja     401b50 <_matherr+0xe0>
  401a8f:	8b 01                	mov    (%rcx),%eax
  401a91:	48 8d 15 bc 26 00 00 	lea    0x26bc(%rip),%rdx        # 404154 <.rdata+0x124>
  401a98:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401a9c:	48 01 d0             	add    %rdx,%rax
  401a9f:	ff e0                	jmpq   *%rax
  401aa1:	48 8d 1d 88 25 00 00 	lea    0x2588(%rip),%rbx        # 404030 <.rdata>
  401aa8:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401aae:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401ab2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401ab7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401abc:	e8 8f 11 00 00       	callq  402c50 <__iob_func>
  401ac1:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401ac8:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401acc:	48 8d 15 55 26 00 00 	lea    0x2655(%rip),%rdx        # 404128 <.rdata+0xf8>
  401ad3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401ad9:	49 89 f1             	mov    %rsi,%r9
  401adc:	49 89 d8             	mov    %rbx,%r8
  401adf:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401ae5:	e8 fe 10 00 00       	callq  402be8 <fprintf>
  401aea:	90                   	nop
  401aeb:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401af0:	31 c0                	xor    %eax,%eax
  401af2:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401af7:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401afd:	48 83 c4 78          	add    $0x78,%rsp
  401b01:	5b                   	pop    %rbx
  401b02:	5e                   	pop    %rsi
  401b03:	c3                   	retq   
  401b04:	48 8d 1d 44 25 00 00 	lea    0x2544(%rip),%rbx        # 40404f <.rdata+0x1f>
  401b0b:	eb 9b                	jmp    401aa8 <_matherr+0x38>
  401b0d:	0f 1f 00             	nopl   (%rax)
  401b10:	48 8d 1d 59 25 00 00 	lea    0x2559(%rip),%rbx        # 404070 <.rdata+0x40>
  401b17:	eb 8f                	jmp    401aa8 <_matherr+0x38>
  401b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b20:	48 8d 1d b9 25 00 00 	lea    0x25b9(%rip),%rbx        # 4040e0 <.rdata+0xb0>
  401b27:	e9 7c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b30:	48 8d 1d 81 25 00 00 	lea    0x2581(%rip),%rbx        # 4040b8 <.rdata+0x88>
  401b37:	e9 6c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b40:	48 8d 1d 49 25 00 00 	lea    0x2549(%rip),%rbx        # 404090 <.rdata+0x60>
  401b47:	e9 5c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b50:	48 8d 1d bf 25 00 00 	lea    0x25bf(%rip),%rbx        # 404116 <.rdata+0xe6>
  401b57:	e9 4c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b5c:	90                   	nop
  401b5d:	90                   	nop
  401b5e:	90                   	nop
  401b5f:	90                   	nop

0000000000401b60 <_fpreset>:
  401b60:	db e3                	fninit 
  401b62:	c3                   	retq   
  401b63:	90                   	nop
  401b64:	90                   	nop
  401b65:	90                   	nop
  401b66:	90                   	nop
  401b67:	90                   	nop
  401b68:	90                   	nop
  401b69:	90                   	nop
  401b6a:	90                   	nop
  401b6b:	90                   	nop
  401b6c:	90                   	nop
  401b6d:	90                   	nop
  401b6e:	90                   	nop
  401b6f:	90                   	nop

0000000000401b70 <_decode_pointer>:
  401b70:	48 89 c8             	mov    %rcx,%rax
  401b73:	c3                   	retq   
  401b74:	66 90                	xchg   %ax,%ax
  401b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b7d:	00 00 00 

0000000000401b80 <_encode_pointer>:
  401b80:	48 89 c8             	mov    %rcx,%rax
  401b83:	c3                   	retq   
  401b84:	90                   	nop
  401b85:	90                   	nop
  401b86:	90                   	nop
  401b87:	90                   	nop
  401b88:	90                   	nop
  401b89:	90                   	nop
  401b8a:	90                   	nop
  401b8b:	90                   	nop
  401b8c:	90                   	nop
  401b8d:	90                   	nop
  401b8e:	90                   	nop
  401b8f:	90                   	nop

0000000000401b90 <__report_error>:
  401b90:	56                   	push   %rsi
  401b91:	53                   	push   %rbx
  401b92:	48 83 ec 38          	sub    $0x38,%rsp
  401b96:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401b9b:	48 89 cb             	mov    %rcx,%rbx
  401b9e:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401ba3:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401ba8:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401bad:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401bb2:	e8 99 10 00 00       	callq  402c50 <__iob_func>
  401bb7:	48 8d 0d b2 25 00 00 	lea    0x25b2(%rip),%rcx        # 404170 <.rdata>
  401bbe:	4c 8d 48 60          	lea    0x60(%rax),%r9
  401bc2:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401bc8:	ba 01 00 00 00       	mov    $0x1,%edx
  401bcd:	e8 06 10 00 00       	callq  402bd8 <fwrite>
  401bd2:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401bd7:	e8 74 10 00 00       	callq  402c50 <__iob_func>
  401bdc:	48 8d 48 60          	lea    0x60(%rax),%rcx
  401be0:	48 89 da             	mov    %rbx,%rdx
  401be3:	49 89 f0             	mov    %rsi,%r8
  401be6:	e8 b5 0f 00 00       	callq  402ba0 <vfprintf>
  401beb:	e8 10 10 00 00       	callq  402c00 <abort>
  401bf0:	90                   	nop
  401bf1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bfd:	00 00 00 

0000000000401c00 <__write_memory.part.0>:
  401c00:	41 55                	push   %r13
  401c02:	41 54                	push   %r12
  401c04:	55                   	push   %rbp
  401c05:	57                   	push   %rdi
  401c06:	56                   	push   %rsi
  401c07:	53                   	push   %rbx
  401c08:	48 83 ec 58          	sub    $0x58,%rsp
  401c0c:	48 89 ce             	mov    %rcx,%rsi
  401c0f:	8b 0d 0f 5a 00 00    	mov    0x5a0f(%rip),%ecx        # 407624 <maxSections>
  401c15:	48 89 d7             	mov    %rdx,%rdi
  401c18:	4c 89 c5             	mov    %r8,%rbp
  401c1b:	85 c9                	test   %ecx,%ecx
  401c1d:	0f 8e f5 00 00 00    	jle    401d18 <__write_memory.part.0+0x118>
  401c23:	48 8b 05 fe 59 00 00 	mov    0x59fe(%rip),%rax        # 407628 <the_secs>
  401c2a:	31 db                	xor    %ebx,%ebx
  401c2c:	48 83 c0 08          	add    $0x8,%rax
  401c30:	48 8b 10             	mov    (%rax),%rdx
  401c33:	48 39 d6             	cmp    %rdx,%rsi
  401c36:	72 14                	jb     401c4c <__write_memory.part.0+0x4c>
  401c38:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401c3c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401c40:	4c 01 c2             	add    %r8,%rdx
  401c43:	48 39 d6             	cmp    %rdx,%rsi
  401c46:	0f 82 b2 00 00 00    	jb     401cfe <__write_memory.part.0+0xfe>
  401c4c:	83 c3 01             	add    $0x1,%ebx
  401c4f:	48 83 c0 18          	add    $0x18,%rax
  401c53:	39 cb                	cmp    %ecx,%ebx
  401c55:	75 d9                	jne    401c30 <__write_memory.part.0+0x30>
  401c57:	48 89 f1             	mov    %rsi,%rcx
  401c5a:	e8 01 0c 00 00       	callq  402860 <__mingw_GetSectionForAddress>
  401c5f:	48 85 c0             	test   %rax,%rax
  401c62:	49 89 c4             	mov    %rax,%r12
  401c65:	0f 84 e5 00 00 00    	je     401d50 <__write_memory.part.0+0x150>
  401c6b:	48 63 db             	movslq %ebx,%rbx
  401c6e:	48 8d 1c 5b          	lea    (%rbx,%rbx,2),%rbx
  401c72:	48 c1 e3 03          	shl    $0x3,%rbx
  401c76:	49 89 dd             	mov    %rbx,%r13
  401c79:	4c 03 2d a8 59 00 00 	add    0x59a8(%rip),%r13        # 407628 <the_secs>
  401c80:	49 89 45 10          	mov    %rax,0x10(%r13)
  401c84:	41 c7 45 00 00 00 00 	movl   $0x0,0x0(%r13)
  401c8b:	00 
  401c8c:	e8 1f 0d 00 00       	callq  4029b0 <_GetPEImageBase>
  401c91:	41 8b 54 24 0c       	mov    0xc(%r12),%edx
  401c96:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401c9c:	48 01 d0             	add    %rdx,%rax
  401c9f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401ca4:	49 89 45 08          	mov    %rax,0x8(%r13)
  401ca8:	48 8b 05 79 59 00 00 	mov    0x5979(%rip),%rax        # 407628 <the_secs>
  401caf:	48 8b 4c 18 08       	mov    0x8(%rax,%rbx,1),%rcx
  401cb4:	ff 15 e2 65 00 00    	callq  *0x65e2(%rip)        # 40829c <__imp_VirtualQuery>
  401cba:	48 85 c0             	test   %rax,%rax
  401cbd:	74 74                	je     401d33 <__write_memory.part.0+0x133>
  401cbf:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401cc3:	8d 50 c0             	lea    -0x40(%rax),%edx
  401cc6:	83 e2 bf             	and    $0xffffffbf,%edx
  401cc9:	74 2c                	je     401cf7 <__write_memory.part.0+0xf7>
  401ccb:	83 e8 04             	sub    $0x4,%eax
  401cce:	83 e0 fb             	and    $0xfffffffb,%eax
  401cd1:	74 24                	je     401cf7 <__write_memory.part.0+0xf7>
  401cd3:	48 03 1d 4e 59 00 00 	add    0x594e(%rip),%rbx        # 407628 <the_secs>
  401cda:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401ce0:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401ce5:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401cea:	49 89 d9             	mov    %rbx,%r9
  401ced:	ff 15 a1 65 00 00    	callq  *0x65a1(%rip)        # 408294 <__imp_VirtualProtect>
  401cf3:	85 c0                	test   %eax,%eax
  401cf5:	74 28                	je     401d1f <__write_memory.part.0+0x11f>
  401cf7:	83 05 26 59 00 00 01 	addl   $0x1,0x5926(%rip)        # 407624 <maxSections>
  401cfe:	49 89 e8             	mov    %rbp,%r8
  401d01:	48 89 fa             	mov    %rdi,%rdx
  401d04:	48 89 f1             	mov    %rsi,%rcx
  401d07:	48 83 c4 58          	add    $0x58,%rsp
  401d0b:	5b                   	pop    %rbx
  401d0c:	5e                   	pop    %rsi
  401d0d:	5f                   	pop    %rdi
  401d0e:	5d                   	pop    %rbp
  401d0f:	41 5c                	pop    %r12
  401d11:	41 5d                	pop    %r13
  401d13:	e9 b0 0e 00 00       	jmpq   402bc8 <memcpy>
  401d18:	31 db                	xor    %ebx,%ebx
  401d1a:	e9 38 ff ff ff       	jmpq   401c57 <__write_memory.part.0+0x57>
  401d1f:	ff 15 ef 64 00 00    	callq  *0x64ef(%rip)        # 408214 <__imp_GetLastError>
  401d25:	48 8d 0d bc 24 00 00 	lea    0x24bc(%rip),%rcx        # 4041e8 <.rdata+0x78>
  401d2c:	89 c2                	mov    %eax,%edx
  401d2e:	e8 5d fe ff ff       	callq  401b90 <__report_error>
  401d33:	48 8b 05 ee 58 00 00 	mov    0x58ee(%rip),%rax        # 407628 <the_secs>
  401d3a:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401d3f:	48 8d 0d 6a 24 00 00 	lea    0x246a(%rip),%rcx        # 4041b0 <.rdata+0x40>
  401d46:	4c 8b 44 18 08       	mov    0x8(%rax,%rbx,1),%r8
  401d4b:	e8 40 fe ff ff       	callq  401b90 <__report_error>
  401d50:	48 8d 0d 39 24 00 00 	lea    0x2439(%rip),%rcx        # 404190 <.rdata+0x20>
  401d57:	48 89 f2             	mov    %rsi,%rdx
  401d5a:	e8 31 fe ff ff       	callq  401b90 <__report_error>
  401d5f:	90                   	nop

0000000000401d60 <_pei386_runtime_relocator>:
  401d60:	55                   	push   %rbp
  401d61:	41 57                	push   %r15
  401d63:	41 56                	push   %r14
  401d65:	41 55                	push   %r13
  401d67:	41 54                	push   %r12
  401d69:	57                   	push   %rdi
  401d6a:	56                   	push   %rsi
  401d6b:	53                   	push   %rbx
  401d6c:	48 83 ec 68          	sub    $0x68,%rsp
  401d70:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401d77:	00 
  401d78:	8b 35 a2 58 00 00    	mov    0x58a2(%rip),%esi        # 407620 <was_init.93790>
  401d7e:	85 f6                	test   %esi,%esi
  401d80:	74 11                	je     401d93 <_pei386_runtime_relocator+0x33>
  401d82:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  401d86:	5b                   	pop    %rbx
  401d87:	5e                   	pop    %rsi
  401d88:	5f                   	pop    %rdi
  401d89:	41 5c                	pop    %r12
  401d8b:	41 5d                	pop    %r13
  401d8d:	41 5e                	pop    %r14
  401d8f:	41 5f                	pop    %r15
  401d91:	5d                   	pop    %rbp
  401d92:	c3                   	retq   
  401d93:	c7 05 83 58 00 00 01 	movl   $0x1,0x5883(%rip)        # 407620 <was_init.93790>
  401d9a:	00 00 00 
  401d9d:	e8 4e 0b 00 00       	callq  4028f0 <__mingw_GetSectionCount>
  401da2:	48 98                	cltq   
  401da4:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  401da8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401daf:	00 
  401db0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401db4:	e8 a7 0d 00 00       	callq  402b60 <___chkstk_ms>
  401db9:	4c 8b 25 00 25 00 00 	mov    0x2500(%rip),%r12        # 4042c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401dc0:	48 8b 1d 09 25 00 00 	mov    0x2509(%rip),%rbx        # 4042d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401dc7:	48 29 c4             	sub    %rax,%rsp
  401dca:	c7 05 50 58 00 00 00 	movl   $0x0,0x5850(%rip)        # 407624 <maxSections>
  401dd1:	00 00 00 
  401dd4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401dd9:	48 89 05 48 58 00 00 	mov    %rax,0x5848(%rip)        # 407628 <the_secs>
  401de0:	4c 89 e0             	mov    %r12,%rax
  401de3:	48 29 d8             	sub    %rbx,%rax
  401de6:	48 83 f8 07          	cmp    $0x7,%rax
  401dea:	7e 96                	jle    401d82 <_pei386_runtime_relocator+0x22>
  401dec:	48 83 f8 0b          	cmp    $0xb,%rax
  401df0:	7e 2e                	jle    401e20 <_pei386_runtime_relocator+0xc0>
  401df2:	44 8b 1b             	mov    (%rbx),%r11d
  401df5:	45 85 db             	test   %r11d,%r11d
  401df8:	0f 85 42 01 00 00    	jne    401f40 <_pei386_runtime_relocator+0x1e0>
  401dfe:	44 8b 53 04          	mov    0x4(%rbx),%r10d
  401e02:	45 85 d2             	test   %r10d,%r10d
  401e05:	0f 85 35 01 00 00    	jne    401f40 <_pei386_runtime_relocator+0x1e0>
  401e0b:	44 8b 4b 08          	mov    0x8(%rbx),%r9d
  401e0f:	45 85 c9             	test   %r9d,%r9d
  401e12:	75 23                	jne    401e37 <_pei386_runtime_relocator+0xd7>
  401e14:	48 83 c3 0c          	add    $0xc,%rbx
  401e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401e1f:	00 
  401e20:	44 8b 03             	mov    (%rbx),%r8d
  401e23:	45 85 c0             	test   %r8d,%r8d
  401e26:	0f 85 14 01 00 00    	jne    401f40 <_pei386_runtime_relocator+0x1e0>
  401e2c:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401e2f:	85 c9                	test   %ecx,%ecx
  401e31:	0f 85 09 01 00 00    	jne    401f40 <_pei386_runtime_relocator+0x1e0>
  401e37:	8b 53 08             	mov    0x8(%rbx),%edx
  401e3a:	83 fa 01             	cmp    $0x1,%edx
  401e3d:	0f 85 06 02 00 00    	jne    402049 <_pei386_runtime_relocator+0x2e9>
  401e43:	48 83 c3 0c          	add    $0xc,%rbx
  401e47:	4c 39 e3             	cmp    %r12,%rbx
  401e4a:	0f 83 32 ff ff ff    	jae    401d82 <_pei386_runtime_relocator+0x22>
  401e50:	4c 8b 2d 99 24 00 00 	mov    0x2499(%rip),%r13        # 4042f0 <.refptr.__image_base__>
  401e57:	4c 8d 75 b0          	lea    -0x50(%rbp),%r14
  401e5b:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e62:	ff ff ff 
  401e65:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401e68:	8b 03                	mov    (%rbx),%eax
  401e6a:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
  401e6e:	4c 01 e8             	add    %r13,%rax
  401e71:	4c 01 e9             	add    %r13,%rcx
  401e74:	83 fa 10             	cmp    $0x10,%edx
  401e77:	4c 8b 00             	mov    (%rax),%r8
  401e7a:	0f 84 35 01 00 00    	je     401fb5 <_pei386_runtime_relocator+0x255>
  401e80:	0f 86 f7 00 00 00    	jbe    401f7d <_pei386_runtime_relocator+0x21d>
  401e86:	83 fa 20             	cmp    $0x20,%edx
  401e89:	0f 84 6e 01 00 00    	je     401ffd <_pei386_runtime_relocator+0x29d>
  401e8f:	83 fa 40             	cmp    $0x40,%edx
  401e92:	0f 85 51 01 00 00    	jne    401fe9 <_pei386_runtime_relocator+0x289>
  401e98:	48 8b 39             	mov    (%rcx),%rdi
  401e9b:	4c 89 f2             	mov    %r14,%rdx
  401e9e:	48 29 c7             	sub    %rax,%rdi
  401ea1:	49 01 f8             	add    %rdi,%r8
  401ea4:	4c 89 f7             	mov    %r14,%rdi
  401ea7:	4c 89 45 b0          	mov    %r8,-0x50(%rbp)
  401eab:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401eb1:	e8 4a fd ff ff       	callq  401c00 <__write_memory.part.0>
  401eb6:	48 83 c3 0c          	add    $0xc,%rbx
  401eba:	4c 39 e3             	cmp    %r12,%rbx
  401ebd:	72 a6                	jb     401e65 <_pei386_runtime_relocator+0x105>
  401ebf:	90                   	nop
  401ec0:	8b 05 5e 57 00 00    	mov    0x575e(%rip),%eax        # 407624 <maxSections>
  401ec6:	31 db                	xor    %ebx,%ebx
  401ec8:	85 c0                	test   %eax,%eax
  401eca:	0f 8e b2 fe ff ff    	jle    401d82 <_pei386_runtime_relocator+0x22>
  401ed0:	4c 8b 25 c5 63 00 00 	mov    0x63c5(%rip),%r12        # 40829c <__imp_VirtualQuery>
  401ed7:	4c 8d 75 ac          	lea    -0x54(%rbp),%r14
  401edb:	4c 8b 2d b2 63 00 00 	mov    0x63b2(%rip),%r13        # 408294 <__imp_VirtualProtect>
  401ee2:	eb 13                	jmp    401ef7 <_pei386_runtime_relocator+0x197>
  401ee4:	83 c6 01             	add    $0x1,%esi
  401ee7:	48 83 c3 18          	add    $0x18,%rbx
  401eeb:	3b 35 33 57 00 00    	cmp    0x5733(%rip),%esi        # 407624 <maxSections>
  401ef1:	0f 8d 8b fe ff ff    	jge    401d82 <_pei386_runtime_relocator+0x22>
  401ef7:	48 89 d8             	mov    %rbx,%rax
  401efa:	48 03 05 27 57 00 00 	add    0x5727(%rip),%rax        # 407628 <the_secs>
  401f01:	8b 10                	mov    (%rax),%edx
  401f03:	85 d2                	test   %edx,%edx
  401f05:	74 dd                	je     401ee4 <_pei386_runtime_relocator+0x184>
  401f07:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401f0b:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401f11:	48 89 fa             	mov    %rdi,%rdx
  401f14:	41 ff d4             	callq  *%r12
  401f17:	48 85 c0             	test   %rax,%rax
  401f1a:	0f 84 0b 01 00 00    	je     40202b <_pei386_runtime_relocator+0x2cb>
  401f20:	48 8b 05 01 57 00 00 	mov    0x5701(%rip),%rax        # 407628 <the_secs>
  401f27:	4d 89 f1             	mov    %r14,%r9
  401f2a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  401f2e:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  401f32:	44 8b 04 18          	mov    (%rax,%rbx,1),%r8d
  401f36:	41 ff d5             	callq  *%r13
  401f39:	eb a9                	jmp    401ee4 <_pei386_runtime_relocator+0x184>
  401f3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401f40:	4c 39 e3             	cmp    %r12,%rbx
  401f43:	0f 83 39 fe ff ff    	jae    401d82 <_pei386_runtime_relocator+0x22>
  401f49:	4c 8b 2d a0 23 00 00 	mov    0x23a0(%rip),%r13        # 4042f0 <.refptr.__image_base__>
  401f50:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  401f54:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401f57:	8b 03                	mov    (%rbx),%eax
  401f59:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f5f:	48 89 fa             	mov    %rdi,%rdx
  401f62:	48 83 c3 08          	add    $0x8,%rbx
  401f66:	4c 01 e9             	add    %r13,%rcx
  401f69:	03 01                	add    (%rcx),%eax
  401f6b:	89 45 b0             	mov    %eax,-0x50(%rbp)
  401f6e:	e8 8d fc ff ff       	callq  401c00 <__write_memory.part.0>
  401f73:	4c 39 e3             	cmp    %r12,%rbx
  401f76:	72 dc                	jb     401f54 <_pei386_runtime_relocator+0x1f4>
  401f78:	e9 43 ff ff ff       	jmpq   401ec0 <_pei386_runtime_relocator+0x160>
  401f7d:	83 fa 08             	cmp    $0x8,%edx
  401f80:	75 67                	jne    401fe9 <_pei386_runtime_relocator+0x289>
  401f82:	0f b6 11             	movzbl (%rcx),%edx
  401f85:	4c 89 f7             	mov    %r14,%rdi
  401f88:	49 89 d2             	mov    %rdx,%r10
  401f8b:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401f92:	84 d2                	test   %dl,%dl
  401f94:	49 0f 48 d2          	cmovs  %r10,%rdx
  401f98:	48 29 c2             	sub    %rax,%rdx
  401f9b:	49 01 d0             	add    %rdx,%r8
  401f9e:	4c 89 f2             	mov    %r14,%rdx
  401fa1:	4c 89 45 b0          	mov    %r8,-0x50(%rbp)
  401fa5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401fab:	e8 50 fc ff ff       	callq  401c00 <__write_memory.part.0>
  401fb0:	e9 01 ff ff ff       	jmpq   401eb6 <_pei386_runtime_relocator+0x156>
  401fb5:	0f b7 11             	movzwl (%rcx),%edx
  401fb8:	4c 89 f7             	mov    %r14,%rdi
  401fbb:	49 89 d2             	mov    %rdx,%r10
  401fbe:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401fc5:	66 85 d2             	test   %dx,%dx
  401fc8:	49 0f 48 d2          	cmovs  %r10,%rdx
  401fcc:	48 29 c2             	sub    %rax,%rdx
  401fcf:	49 01 d0             	add    %rdx,%r8
  401fd2:	4c 89 f2             	mov    %r14,%rdx
  401fd5:	4c 89 45 b0          	mov    %r8,-0x50(%rbp)
  401fd9:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401fdf:	e8 1c fc ff ff       	callq  401c00 <__write_memory.part.0>
  401fe4:	e9 cd fe ff ff       	jmpq   401eb6 <_pei386_runtime_relocator+0x156>
  401fe9:	48 8d 0d 58 22 00 00 	lea    0x2258(%rip),%rcx        # 404248 <.rdata+0xd8>
  401ff0:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  401ff7:	00 
  401ff8:	e8 93 fb ff ff       	callq  401b90 <__report_error>
  401ffd:	8b 11                	mov    (%rcx),%edx
  401fff:	4c 89 f7             	mov    %r14,%rdi
  402002:	49 89 d2             	mov    %rdx,%r10
  402005:	4d 09 fa             	or     %r15,%r10
  402008:	85 d2                	test   %edx,%edx
  40200a:	49 0f 48 d2          	cmovs  %r10,%rdx
  40200e:	48 29 c2             	sub    %rax,%rdx
  402011:	49 01 d0             	add    %rdx,%r8
  402014:	4c 89 f2             	mov    %r14,%rdx
  402017:	4c 89 45 b0          	mov    %r8,-0x50(%rbp)
  40201b:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402021:	e8 da fb ff ff       	callq  401c00 <__write_memory.part.0>
  402026:	e9 8b fe ff ff       	jmpq   401eb6 <_pei386_runtime_relocator+0x156>
  40202b:	48 03 1d f6 55 00 00 	add    0x55f6(%rip),%rbx        # 407628 <the_secs>
  402032:	48 8d 0d 77 21 00 00 	lea    0x2177(%rip),%rcx        # 4041b0 <.rdata+0x40>
  402039:	48 8b 43 10          	mov    0x10(%rbx),%rax
  40203d:	4c 8b 43 08          	mov    0x8(%rbx),%r8
  402041:	8b 50 08             	mov    0x8(%rax),%edx
  402044:	e8 47 fb ff ff       	callq  401b90 <__report_error>
  402049:	48 8d 0d c0 21 00 00 	lea    0x21c0(%rip),%rcx        # 404210 <.rdata+0xa0>
  402050:	e8 3b fb ff ff       	callq  401b90 <__report_error>
  402055:	90                   	nop
  402056:	90                   	nop
  402057:	90                   	nop
  402058:	90                   	nop
  402059:	90                   	nop
  40205a:	90                   	nop
  40205b:	90                   	nop
  40205c:	90                   	nop
  40205d:	90                   	nop
  40205e:	90                   	nop
  40205f:	90                   	nop

0000000000402060 <__mingw_SEH_error_handler>:
  402060:	48 83 ec 28          	sub    $0x28,%rsp
  402064:	8b 01                	mov    (%rcx),%eax
  402066:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  40206b:	77 63                	ja     4020d0 <__mingw_SEH_error_handler+0x70>
  40206d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  402072:	73 7b                	jae    4020ef <__mingw_SEH_error_handler+0x8f>
  402074:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402079:	0f 84 0d 01 00 00    	je     40218c <__mingw_SEH_error_handler+0x12c>
  40207f:	0f 87 db 00 00 00    	ja     402160 <__mingw_SEH_error_handler+0x100>
  402085:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40208a:	0f 84 fc 00 00 00    	je     40218c <__mingw_SEH_error_handler+0x12c>
  402090:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402095:	0f 85 d3 00 00 00    	jne    40216e <__mingw_SEH_error_handler+0x10e>
  40209b:	31 d2                	xor    %edx,%edx
  40209d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020a2:	e8 11 0b 00 00       	callq  402bb8 <signal>
  4020a7:	48 83 f8 01          	cmp    $0x1,%rax
  4020ab:	0f 84 31 01 00 00    	je     4021e2 <__mingw_SEH_error_handler+0x182>
  4020b1:	48 85 c0             	test   %rax,%rax
  4020b4:	0f 84 08 01 00 00    	je     4021c2 <__mingw_SEH_error_handler+0x162>
  4020ba:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020bf:	ff d0                	callq  *%rax
  4020c1:	31 c0                	xor    %eax,%eax
  4020c3:	48 83 c4 28          	add    $0x28,%rsp
  4020c7:	c3                   	retq   
  4020c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4020cf:	00 
  4020d0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4020d5:	0f 84 b8 00 00 00    	je     402193 <__mingw_SEH_error_handler+0x133>
  4020db:	77 43                	ja     402120 <__mingw_SEH_error_handler+0xc0>
  4020dd:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4020e2:	0f 84 a4 00 00 00    	je     40218c <__mingw_SEH_error_handler+0x12c>
  4020e8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4020ed:	75 7f                	jne    40216e <__mingw_SEH_error_handler+0x10e>
  4020ef:	31 d2                	xor    %edx,%edx
  4020f1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020f6:	e8 bd 0a 00 00       	callq  402bb8 <signal>
  4020fb:	48 83 f8 01          	cmp    $0x1,%rax
  4020ff:	48 89 c2             	mov    %rax,%rdx
  402102:	74 74                	je     402178 <__mingw_SEH_error_handler+0x118>
  402104:	48 85 d2             	test   %rdx,%rdx
  402107:	b8 01 00 00 00       	mov    $0x1,%eax
  40210c:	74 b5                	je     4020c3 <__mingw_SEH_error_handler+0x63>
  40210e:	b9 08 00 00 00       	mov    $0x8,%ecx
  402113:	ff d2                	callq  *%rdx
  402115:	31 c0                	xor    %eax,%eax
  402117:	48 83 c4 28          	add    $0x28,%rsp
  40211b:	c3                   	retq   
  40211c:	0f 1f 40 00          	nopl   0x0(%rax)
  402120:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402125:	74 65                	je     40218c <__mingw_SEH_error_handler+0x12c>
  402127:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40212c:	75 40                	jne    40216e <__mingw_SEH_error_handler+0x10e>
  40212e:	31 d2                	xor    %edx,%edx
  402130:	b9 04 00 00 00       	mov    $0x4,%ecx
  402135:	e8 7e 0a 00 00       	callq  402bb8 <signal>
  40213a:	48 83 f8 01          	cmp    $0x1,%rax
  40213e:	0f 84 88 00 00 00    	je     4021cc <__mingw_SEH_error_handler+0x16c>
  402144:	48 85 c0             	test   %rax,%rax
  402147:	74 79                	je     4021c2 <__mingw_SEH_error_handler+0x162>
  402149:	b9 04 00 00 00       	mov    $0x4,%ecx
  40214e:	ff d0                	callq  *%rax
  402150:	31 c0                	xor    %eax,%eax
  402152:	e9 6c ff ff ff       	jmpq   4020c3 <__mingw_SEH_error_handler+0x63>
  402157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40215e:	00 00 
  402160:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402165:	74 c7                	je     40212e <__mingw_SEH_error_handler+0xce>
  402167:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40216c:	74 1e                	je     40218c <__mingw_SEH_error_handler+0x12c>
  40216e:	b8 01 00 00 00       	mov    $0x1,%eax
  402173:	48 83 c4 28          	add    $0x28,%rsp
  402177:	c3                   	retq   
  402178:	ba 01 00 00 00       	mov    $0x1,%edx
  40217d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402182:	e8 31 0a 00 00       	callq  402bb8 <signal>
  402187:	e8 d4 f9 ff ff       	callq  401b60 <_fpreset>
  40218c:	31 c0                	xor    %eax,%eax
  40218e:	48 83 c4 28          	add    $0x28,%rsp
  402192:	c3                   	retq   
  402193:	31 d2                	xor    %edx,%edx
  402195:	b9 08 00 00 00       	mov    $0x8,%ecx
  40219a:	e8 19 0a 00 00       	callq  402bb8 <signal>
  40219f:	48 83 f8 01          	cmp    $0x1,%rax
  4021a3:	48 89 c2             	mov    %rax,%rdx
  4021a6:	0f 85 58 ff ff ff    	jne    402104 <__mingw_SEH_error_handler+0xa4>
  4021ac:	ba 01 00 00 00       	mov    $0x1,%edx
  4021b1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4021b6:	e8 fd 09 00 00       	callq  402bb8 <signal>
  4021bb:	31 c0                	xor    %eax,%eax
  4021bd:	e9 01 ff ff ff       	jmpq   4020c3 <__mingw_SEH_error_handler+0x63>
  4021c2:	b8 04 00 00 00       	mov    $0x4,%eax
  4021c7:	48 83 c4 28          	add    $0x28,%rsp
  4021cb:	c3                   	retq   
  4021cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4021d1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021d6:	e8 dd 09 00 00       	callq  402bb8 <signal>
  4021db:	31 c0                	xor    %eax,%eax
  4021dd:	e9 e1 fe ff ff       	jmpq   4020c3 <__mingw_SEH_error_handler+0x63>
  4021e2:	ba 01 00 00 00       	mov    $0x1,%edx
  4021e7:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021ec:	e8 c7 09 00 00       	callq  402bb8 <signal>
  4021f1:	31 c0                	xor    %eax,%eax
  4021f3:	e9 cb fe ff ff       	jmpq   4020c3 <__mingw_SEH_error_handler+0x63>
  4021f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4021ff:	00 

0000000000402200 <__mingw_init_ehandler>:
  402200:	41 54                	push   %r12
  402202:	55                   	push   %rbp
  402203:	57                   	push   %rdi
  402204:	56                   	push   %rsi
  402205:	53                   	push   %rbx
  402206:	48 83 ec 20          	sub    $0x20,%rsp
  40220a:	e8 a1 07 00 00       	callq  4029b0 <_GetPEImageBase>
  40220f:	48 89 c5             	mov    %rax,%rbp
  402212:	8b 05 30 54 00 00    	mov    0x5430(%rip),%eax        # 407648 <was_here.93622>
  402218:	85 c0                	test   %eax,%eax
  40221a:	75 25                	jne    402241 <__mingw_init_ehandler+0x41>
  40221c:	48 85 ed             	test   %rbp,%rbp
  40221f:	74 20                	je     402241 <__mingw_init_ehandler+0x41>
  402221:	48 8d 0d 58 20 00 00 	lea    0x2058(%rip),%rcx        # 404280 <.rdata>
  402228:	c7 05 16 54 00 00 01 	movl   $0x1,0x5416(%rip)        # 407648 <was_here.93622>
  40222f:	00 00 00 
  402232:	e8 99 05 00 00       	callq  4027d0 <_FindPESectionByName>
  402237:	48 85 c0             	test   %rax,%rax
  40223a:	74 14                	je     402250 <__mingw_init_ehandler+0x50>
  40223c:	b8 01 00 00 00       	mov    $0x1,%eax
  402241:	48 83 c4 20          	add    $0x20,%rsp
  402245:	5b                   	pop    %rbx
  402246:	5e                   	pop    %rsi
  402247:	5f                   	pop    %rdi
  402248:	5d                   	pop    %rbp
  402249:	41 5c                	pop    %r12
  40224b:	c3                   	retq   
  40224c:	0f 1f 40 00          	nopl   0x0(%rax)
  402250:	48 8d 1d 09 55 00 00 	lea    0x5509(%rip),%rbx        # 407760 <emu_pdata>
  402257:	48 8d 15 02 54 00 00 	lea    0x5402(%rip),%rdx        # 407660 <emu_xdata>
  40225e:	b9 30 00 00 00       	mov    $0x30,%ecx
  402263:	4c 8d 25 f6 fd ff ff 	lea    -0x20a(%rip),%r12        # 402060 <__mingw_SEH_error_handler>
  40226a:	31 f6                	xor    %esi,%esi
  40226c:	48 89 df             	mov    %rbx,%rdi
  40226f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402272:	b9 20 00 00 00       	mov    $0x20,%ecx
  402277:	48 89 d7             	mov    %rdx,%rdi
  40227a:	49 29 ec             	sub    %rbp,%r12
  40227d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402280:	48 89 d7             	mov    %rdx,%rdi
  402283:	eb 2e                	jmp    4022b3 <__mingw_init_ehandler+0xb3>
  402285:	c6 07 09             	movb   $0x9,(%rdi)
  402288:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  40228c:	48 83 c6 01          	add    $0x1,%rsi
  402290:	8b 50 0c             	mov    0xc(%rax),%edx
  402293:	48 83 c3 0c          	add    $0xc,%rbx
  402297:	89 53 f4             	mov    %edx,-0xc(%rbx)
  40229a:	03 50 08             	add    0x8(%rax),%edx
  40229d:	48 89 f8             	mov    %rdi,%rax
  4022a0:	48 29 e8             	sub    %rbp,%rax
  4022a3:	48 83 c7 08          	add    $0x8,%rdi
  4022a7:	89 43 fc             	mov    %eax,-0x4(%rbx)
  4022aa:	89 53 f8             	mov    %edx,-0x8(%rbx)
  4022ad:	48 83 fe 20          	cmp    $0x20,%rsi
  4022b1:	74 32                	je     4022e5 <__mingw_init_ehandler+0xe5>
  4022b3:	48 89 f1             	mov    %rsi,%rcx
  4022b6:	e8 75 06 00 00       	callq  402930 <_FindPESectionExec>
  4022bb:	48 85 c0             	test   %rax,%rax
  4022be:	75 c5                	jne    402285 <__mingw_init_ehandler+0x85>
  4022c0:	48 85 f6             	test   %rsi,%rsi
  4022c3:	0f 84 73 ff ff ff    	je     40223c <__mingw_init_ehandler+0x3c>
  4022c9:	89 f2                	mov    %esi,%edx
  4022cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022d0:	49 89 e8             	mov    %rbp,%r8
  4022d3:	48 8d 0d 86 54 00 00 	lea    0x5486(%rip),%rcx        # 407760 <emu_pdata>
  4022da:	ff 15 6c 5f 00 00    	callq  *0x5f6c(%rip)        # 40824c <__imp_RtlAddFunctionTable>
  4022e0:	e9 57 ff ff ff       	jmpq   40223c <__mingw_init_ehandler+0x3c>
  4022e5:	ba 20 00 00 00       	mov    $0x20,%edx
  4022ea:	eb e4                	jmp    4022d0 <__mingw_init_ehandler+0xd0>
  4022ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004022f0 <_gnu_exception_handler>:
  4022f0:	53                   	push   %rbx
  4022f1:	48 83 ec 20          	sub    $0x20,%rsp
  4022f5:	48 8b 11             	mov    (%rcx),%rdx
  4022f8:	48 89 cb             	mov    %rcx,%rbx
  4022fb:	8b 02                	mov    (%rdx),%eax
  4022fd:	89 c1                	mov    %eax,%ecx
  4022ff:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402305:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40230b:	0f 84 df 00 00 00    	je     4023f0 <_gnu_exception_handler+0x100>
  402311:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402316:	0f 87 84 00 00 00    	ja     4023a0 <_gnu_exception_handler+0xb0>
  40231c:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  402321:	0f 83 94 00 00 00    	jae    4023bb <_gnu_exception_handler+0xcb>
  402327:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40232c:	0f 84 c8 00 00 00    	je     4023fa <_gnu_exception_handler+0x10a>
  402332:	77 3f                	ja     402373 <_gnu_exception_handler+0x83>
  402334:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402339:	0f 84 bb 00 00 00    	je     4023fa <_gnu_exception_handler+0x10a>
  40233f:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402344:	75 3f                	jne    402385 <_gnu_exception_handler+0x95>
  402346:	31 d2                	xor    %edx,%edx
  402348:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40234d:	e8 66 08 00 00       	callq  402bb8 <signal>
  402352:	48 83 f8 01          	cmp    $0x1,%rax
  402356:	0f 84 34 01 00 00    	je     402490 <_gnu_exception_handler+0x1a0>
  40235c:	48 85 c0             	test   %rax,%rax
  40235f:	74 24                	je     402385 <_gnu_exception_handler+0x95>
  402361:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402366:	ff d0                	callq  *%rax
  402368:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40236d:	48 83 c4 20          	add    $0x20,%rsp
  402371:	5b                   	pop    %rbx
  402372:	c3                   	retq   
  402373:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402378:	0f 84 99 00 00 00    	je     402417 <_gnu_exception_handler+0x127>
  40237e:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402383:	74 75                	je     4023fa <_gnu_exception_handler+0x10a>
  402385:	48 8b 05 b4 52 00 00 	mov    0x52b4(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  40238c:	48 85 c0             	test   %rax,%rax
  40238f:	74 dc                	je     40236d <_gnu_exception_handler+0x7d>
  402391:	48 89 d9             	mov    %rbx,%rcx
  402394:	48 83 c4 20          	add    $0x20,%rsp
  402398:	5b                   	pop    %rbx
  402399:	48 ff e0             	rex.W jmpq *%rax
  40239c:	0f 1f 40 00          	nopl   0x0(%rax)
  4023a0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4023a5:	0f 84 99 00 00 00    	je     402444 <_gnu_exception_handler+0x154>
  4023ab:	77 58                	ja     402405 <_gnu_exception_handler+0x115>
  4023ad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4023b2:	74 46                	je     4023fa <_gnu_exception_handler+0x10a>
  4023b4:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4023b9:	75 ca                	jne    402385 <_gnu_exception_handler+0x95>
  4023bb:	31 d2                	xor    %edx,%edx
  4023bd:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023c2:	e8 f1 07 00 00       	callq  402bb8 <signal>
  4023c7:	48 83 f8 01          	cmp    $0x1,%rax
  4023cb:	0f 84 d8 00 00 00    	je     4024a9 <_gnu_exception_handler+0x1b9>
  4023d1:	48 85 c0             	test   %rax,%rax
  4023d4:	74 af                	je     402385 <_gnu_exception_handler+0x95>
  4023d6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023db:	ff d0                	callq  *%rax
  4023dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023e2:	48 83 c4 20          	add    $0x20,%rsp
  4023e6:	5b                   	pop    %rbx
  4023e7:	c3                   	retq   
  4023e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023ef:	00 
  4023f0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4023f4:	0f 85 17 ff ff ff    	jne    402311 <_gnu_exception_handler+0x21>
  4023fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023ff:	48 83 c4 20          	add    $0x20,%rsp
  402403:	5b                   	pop    %rbx
  402404:	c3                   	retq   
  402405:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  40240a:	74 ee                	je     4023fa <_gnu_exception_handler+0x10a>
  40240c:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402411:	0f 85 6e ff ff ff    	jne    402385 <_gnu_exception_handler+0x95>
  402417:	31 d2                	xor    %edx,%edx
  402419:	b9 04 00 00 00       	mov    $0x4,%ecx
  40241e:	e8 95 07 00 00       	callq  402bb8 <signal>
  402423:	48 83 f8 01          	cmp    $0x1,%rax
  402427:	74 4a                	je     402473 <_gnu_exception_handler+0x183>
  402429:	48 85 c0             	test   %rax,%rax
  40242c:	0f 84 53 ff ff ff    	je     402385 <_gnu_exception_handler+0x95>
  402432:	b9 04 00 00 00       	mov    $0x4,%ecx
  402437:	ff d0                	callq  *%rax
  402439:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40243e:	48 83 c4 20          	add    $0x20,%rsp
  402442:	5b                   	pop    %rbx
  402443:	c3                   	retq   
  402444:	31 d2                	xor    %edx,%edx
  402446:	b9 08 00 00 00       	mov    $0x8,%ecx
  40244b:	e8 68 07 00 00       	callq  402bb8 <signal>
  402450:	48 83 f8 01          	cmp    $0x1,%rax
  402454:	0f 85 77 ff ff ff    	jne    4023d1 <_gnu_exception_handler+0xe1>
  40245a:	ba 01 00 00 00       	mov    $0x1,%edx
  40245f:	b9 08 00 00 00       	mov    $0x8,%ecx
  402464:	e8 4f 07 00 00       	callq  402bb8 <signal>
  402469:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40246e:	e9 fa fe ff ff       	jmpq   40236d <_gnu_exception_handler+0x7d>
  402473:	ba 01 00 00 00       	mov    $0x1,%edx
  402478:	b9 04 00 00 00       	mov    $0x4,%ecx
  40247d:	e8 36 07 00 00       	callq  402bb8 <signal>
  402482:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402487:	e9 e1 fe ff ff       	jmpq   40236d <_gnu_exception_handler+0x7d>
  40248c:	0f 1f 40 00          	nopl   0x0(%rax)
  402490:	ba 01 00 00 00       	mov    $0x1,%edx
  402495:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40249a:	e8 19 07 00 00       	callq  402bb8 <signal>
  40249f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024a4:	e9 c4 fe ff ff       	jmpq   40236d <_gnu_exception_handler+0x7d>
  4024a9:	ba 01 00 00 00       	mov    $0x1,%edx
  4024ae:	b9 08 00 00 00       	mov    $0x8,%ecx
  4024b3:	e8 00 07 00 00       	callq  402bb8 <signal>
  4024b8:	e8 a3 f6 ff ff       	callq  401b60 <_fpreset>
  4024bd:	e9 38 ff ff ff       	jmpq   4023fa <_gnu_exception_handler+0x10a>
  4024c2:	90                   	nop
  4024c3:	90                   	nop
  4024c4:	90                   	nop
  4024c5:	90                   	nop
  4024c6:	90                   	nop
  4024c7:	90                   	nop
  4024c8:	90                   	nop
  4024c9:	90                   	nop
  4024ca:	90                   	nop
  4024cb:	90                   	nop
  4024cc:	90                   	nop
  4024cd:	90                   	nop
  4024ce:	90                   	nop
  4024cf:	90                   	nop

00000000004024d0 <__mingwthr_run_key_dtors.part.0>:
  4024d0:	55                   	push   %rbp
  4024d1:	57                   	push   %rdi
  4024d2:	56                   	push   %rsi
  4024d3:	53                   	push   %rbx
  4024d4:	48 83 ec 28          	sub    $0x28,%rsp
  4024d8:	48 8d 0d 21 54 00 00 	lea    0x5421(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024df:	ff 15 0f 5d 00 00    	callq  *0x5d0f(%rip)        # 4081f4 <__imp_EnterCriticalSection>
  4024e5:	48 8b 1d f4 53 00 00 	mov    0x53f4(%rip),%rbx        # 4078e0 <key_dtor_list>
  4024ec:	48 85 db             	test   %rbx,%rbx
  4024ef:	74 33                	je     402524 <__mingwthr_run_key_dtors.part.0+0x54>
  4024f1:	48 8b 2d 8c 5d 00 00 	mov    0x5d8c(%rip),%rbp        # 408284 <__imp_TlsGetValue>
  4024f8:	48 8b 3d 15 5d 00 00 	mov    0x5d15(%rip),%rdi        # 408214 <__imp_GetLastError>
  4024ff:	90                   	nop
  402500:	8b 0b                	mov    (%rbx),%ecx
  402502:	ff d5                	callq  *%rbp
  402504:	48 89 c6             	mov    %rax,%rsi
  402507:	ff d7                	callq  *%rdi
  402509:	85 c0                	test   %eax,%eax
  40250b:	75 0e                	jne    40251b <__mingwthr_run_key_dtors.part.0+0x4b>
  40250d:	48 85 f6             	test   %rsi,%rsi
  402510:	74 09                	je     40251b <__mingwthr_run_key_dtors.part.0+0x4b>
  402512:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402516:	48 89 f1             	mov    %rsi,%rcx
  402519:	ff d0                	callq  *%rax
  40251b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40251f:	48 85 db             	test   %rbx,%rbx
  402522:	75 dc                	jne    402500 <__mingwthr_run_key_dtors.part.0+0x30>
  402524:	48 8d 0d d5 53 00 00 	lea    0x53d5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40252b:	48 83 c4 28          	add    $0x28,%rsp
  40252f:	5b                   	pop    %rbx
  402530:	5e                   	pop    %rsi
  402531:	5f                   	pop    %rdi
  402532:	5d                   	pop    %rbp
  402533:	48 ff 25 02 5d 00 00 	rex.W jmpq *0x5d02(%rip)        # 40823c <__imp_LeaveCriticalSection>
  40253a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402540 <___w64_mingwthr_add_key_dtor>:
  402540:	55                   	push   %rbp
  402541:	57                   	push   %rdi
  402542:	56                   	push   %rsi
  402543:	53                   	push   %rbx
  402544:	48 83 ec 28          	sub    $0x28,%rsp
  402548:	8b 05 9a 53 00 00    	mov    0x539a(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40254e:	31 f6                	xor    %esi,%esi
  402550:	89 cd                	mov    %ecx,%ebp
  402552:	48 89 d7             	mov    %rdx,%rdi
  402555:	85 c0                	test   %eax,%eax
  402557:	75 0b                	jne    402564 <___w64_mingwthr_add_key_dtor+0x24>
  402559:	89 f0                	mov    %esi,%eax
  40255b:	48 83 c4 28          	add    $0x28,%rsp
  40255f:	5b                   	pop    %rbx
  402560:	5e                   	pop    %rsi
  402561:	5f                   	pop    %rdi
  402562:	5d                   	pop    %rbp
  402563:	c3                   	retq   
  402564:	ba 18 00 00 00       	mov    $0x18,%edx
  402569:	b9 01 00 00 00       	mov    $0x1,%ecx
  40256e:	e8 85 06 00 00       	callq  402bf8 <calloc>
  402573:	48 85 c0             	test   %rax,%rax
  402576:	48 89 c3             	mov    %rax,%rbx
  402579:	74 3d                	je     4025b8 <___w64_mingwthr_add_key_dtor+0x78>
  40257b:	89 28                	mov    %ebp,(%rax)
  40257d:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402581:	48 8d 0d 78 53 00 00 	lea    0x5378(%rip),%rcx        # 407900 <__mingwthr_cs>
  402588:	ff 15 66 5c 00 00    	callq  *0x5c66(%rip)        # 4081f4 <__imp_EnterCriticalSection>
  40258e:	48 8b 05 4b 53 00 00 	mov    0x534b(%rip),%rax        # 4078e0 <key_dtor_list>
  402595:	48 8d 0d 64 53 00 00 	lea    0x5364(%rip),%rcx        # 407900 <__mingwthr_cs>
  40259c:	48 89 1d 3d 53 00 00 	mov    %rbx,0x533d(%rip)        # 4078e0 <key_dtor_list>
  4025a3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025a7:	ff 15 8f 5c 00 00    	callq  *0x5c8f(%rip)        # 40823c <__imp_LeaveCriticalSection>
  4025ad:	89 f0                	mov    %esi,%eax
  4025af:	48 83 c4 28          	add    $0x28,%rsp
  4025b3:	5b                   	pop    %rbx
  4025b4:	5e                   	pop    %rsi
  4025b5:	5f                   	pop    %rdi
  4025b6:	5d                   	pop    %rbp
  4025b7:	c3                   	retq   
  4025b8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4025bd:	eb 9a                	jmp    402559 <___w64_mingwthr_add_key_dtor+0x19>
  4025bf:	90                   	nop

00000000004025c0 <___w64_mingwthr_remove_key_dtor>:
  4025c0:	53                   	push   %rbx
  4025c1:	48 83 ec 20          	sub    $0x20,%rsp
  4025c5:	8b 05 1d 53 00 00    	mov    0x531d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025cb:	89 cb                	mov    %ecx,%ebx
  4025cd:	85 c0                	test   %eax,%eax
  4025cf:	75 0f                	jne    4025e0 <___w64_mingwthr_remove_key_dtor+0x20>
  4025d1:	31 c0                	xor    %eax,%eax
  4025d3:	48 83 c4 20          	add    $0x20,%rsp
  4025d7:	5b                   	pop    %rbx
  4025d8:	c3                   	retq   
  4025d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025e0:	48 8d 0d 19 53 00 00 	lea    0x5319(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025e7:	ff 15 07 5c 00 00    	callq  *0x5c07(%rip)        # 4081f4 <__imp_EnterCriticalSection>
  4025ed:	48 8b 05 ec 52 00 00 	mov    0x52ec(%rip),%rax        # 4078e0 <key_dtor_list>
  4025f4:	48 85 c0             	test   %rax,%rax
  4025f7:	74 1a                	je     402613 <___w64_mingwthr_remove_key_dtor+0x53>
  4025f9:	8b 10                	mov    (%rax),%edx
  4025fb:	39 d3                	cmp    %edx,%ebx
  4025fd:	75 0b                	jne    40260a <___w64_mingwthr_remove_key_dtor+0x4a>
  4025ff:	eb 4b                	jmp    40264c <___w64_mingwthr_remove_key_dtor+0x8c>
  402601:	8b 11                	mov    (%rcx),%edx
  402603:	39 da                	cmp    %ebx,%edx
  402605:	74 29                	je     402630 <___w64_mingwthr_remove_key_dtor+0x70>
  402607:	48 89 c8             	mov    %rcx,%rax
  40260a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40260e:	48 85 c9             	test   %rcx,%rcx
  402611:	75 ee                	jne    402601 <___w64_mingwthr_remove_key_dtor+0x41>
  402613:	48 8d 0d e6 52 00 00 	lea    0x52e6(%rip),%rcx        # 407900 <__mingwthr_cs>
  40261a:	ff 15 1c 5c 00 00    	callq  *0x5c1c(%rip)        # 40823c <__imp_LeaveCriticalSection>
  402620:	31 c0                	xor    %eax,%eax
  402622:	48 83 c4 20          	add    $0x20,%rsp
  402626:	5b                   	pop    %rbx
  402627:	c3                   	retq   
  402628:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40262f:	00 
  402630:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402634:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402638:	e8 a3 05 00 00       	callq  402be0 <free>
  40263d:	48 8d 0d bc 52 00 00 	lea    0x52bc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402644:	ff 15 f2 5b 00 00    	callq  *0x5bf2(%rip)        # 40823c <__imp_LeaveCriticalSection>
  40264a:	eb d4                	jmp    402620 <___w64_mingwthr_remove_key_dtor+0x60>
  40264c:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402650:	48 89 c1             	mov    %rax,%rcx
  402653:	48 89 15 86 52 00 00 	mov    %rdx,0x5286(%rip)        # 4078e0 <key_dtor_list>
  40265a:	eb dc                	jmp    402638 <___w64_mingwthr_remove_key_dtor+0x78>
  40265c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402660 <__mingw_TLScallback>:
  402660:	53                   	push   %rbx
  402661:	48 83 ec 20          	sub    $0x20,%rsp
  402665:	83 fa 01             	cmp    $0x1,%edx
  402668:	0f 84 92 00 00 00    	je     402700 <__mingw_TLScallback+0xa0>
  40266e:	72 30                	jb     4026a0 <__mingw_TLScallback+0x40>
  402670:	83 fa 02             	cmp    $0x2,%edx
  402673:	74 1b                	je     402690 <__mingw_TLScallback+0x30>
  402675:	83 fa 03             	cmp    $0x3,%edx
  402678:	75 1b                	jne    402695 <__mingw_TLScallback+0x35>
  40267a:	8b 05 68 52 00 00    	mov    0x5268(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402680:	85 c0                	test   %eax,%eax
  402682:	74 11                	je     402695 <__mingw_TLScallback+0x35>
  402684:	e8 47 fe ff ff       	callq  4024d0 <__mingwthr_run_key_dtors.part.0>
  402689:	eb 0a                	jmp    402695 <__mingw_TLScallback+0x35>
  40268b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402690:	e8 cb f4 ff ff       	callq  401b60 <_fpreset>
  402695:	b8 01 00 00 00       	mov    $0x1,%eax
  40269a:	48 83 c4 20          	add    $0x20,%rsp
  40269e:	5b                   	pop    %rbx
  40269f:	c3                   	retq   
  4026a0:	8b 05 42 52 00 00    	mov    0x5242(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4026a6:	85 c0                	test   %eax,%eax
  4026a8:	0f 85 82 00 00 00    	jne    402730 <__mingw_TLScallback+0xd0>
  4026ae:	8b 05 34 52 00 00    	mov    0x5234(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4026b4:	83 f8 01             	cmp    $0x1,%eax
  4026b7:	75 dc                	jne    402695 <__mingw_TLScallback+0x35>
  4026b9:	48 8b 0d 20 52 00 00 	mov    0x5220(%rip),%rcx        # 4078e0 <key_dtor_list>
  4026c0:	48 85 c9             	test   %rcx,%rcx
  4026c3:	74 11                	je     4026d6 <__mingw_TLScallback+0x76>
  4026c5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4026c9:	e8 12 05 00 00       	callq  402be0 <free>
  4026ce:	48 85 db             	test   %rbx,%rbx
  4026d1:	48 89 d9             	mov    %rbx,%rcx
  4026d4:	75 ef                	jne    4026c5 <__mingw_TLScallback+0x65>
  4026d6:	48 8d 0d 23 52 00 00 	lea    0x5223(%rip),%rcx        # 407900 <__mingwthr_cs>
  4026dd:	48 c7 05 f8 51 00 00 	movq   $0x0,0x51f8(%rip)        # 4078e0 <key_dtor_list>
  4026e4:	00 00 00 00 
  4026e8:	c7 05 f6 51 00 00 00 	movl   $0x0,0x51f6(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026ef:	00 00 00 
  4026f2:	ff 15 f4 5a 00 00    	callq  *0x5af4(%rip)        # 4081ec <__IAT_start__>
  4026f8:	eb 9b                	jmp    402695 <__mingw_TLScallback+0x35>
  4026fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402700:	8b 05 e2 51 00 00    	mov    0x51e2(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402706:	85 c0                	test   %eax,%eax
  402708:	74 16                	je     402720 <__mingw_TLScallback+0xc0>
  40270a:	b8 01 00 00 00       	mov    $0x1,%eax
  40270f:	c7 05 cf 51 00 00 01 	movl   $0x1,0x51cf(%rip)        # 4078e8 <__mingwthr_cs_init>
  402716:	00 00 00 
  402719:	48 83 c4 20          	add    $0x20,%rsp
  40271d:	5b                   	pop    %rbx
  40271e:	c3                   	retq   
  40271f:	90                   	nop
  402720:	48 8d 0d d9 51 00 00 	lea    0x51d9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402727:	ff 15 07 5b 00 00    	callq  *0x5b07(%rip)        # 408234 <__imp_InitializeCriticalSection>
  40272d:	eb db                	jmp    40270a <__mingw_TLScallback+0xaa>
  40272f:	90                   	nop
  402730:	e8 9b fd ff ff       	callq  4024d0 <__mingwthr_run_key_dtors.part.0>
  402735:	e9 74 ff ff ff       	jmpq   4026ae <__mingw_TLScallback+0x4e>
  40273a:	90                   	nop
  40273b:	90                   	nop
  40273c:	90                   	nop
  40273d:	90                   	nop
  40273e:	90                   	nop
  40273f:	90                   	nop

0000000000402740 <_ValidateImageBase.part.0>:
  402740:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402744:	48 01 c1             	add    %rax,%rcx
  402747:	31 c0                	xor    %eax,%eax
  402749:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40274f:	75 09                	jne    40275a <_ValidateImageBase.part.0+0x1a>
  402751:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  402757:	0f 94 c0             	sete   %al
  40275a:	0f b6 c0             	movzbl %al,%eax
  40275d:	c3                   	retq   
  40275e:	66 90                	xchg   %ax,%ax

0000000000402760 <_ValidateImageBase>:
  402760:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402765:	74 09                	je     402770 <_ValidateImageBase+0x10>
  402767:	31 c0                	xor    %eax,%eax
  402769:	c3                   	retq   
  40276a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402770:	eb ce                	jmp    402740 <_ValidateImageBase.part.0>
  402772:	0f 1f 40 00          	nopl   0x0(%rax)
  402776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40277d:	00 00 00 

0000000000402780 <_FindPESection>:
  402780:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402784:	48 01 c1             	add    %rax,%rcx
  402787:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40278b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402790:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402794:	85 c9                	test   %ecx,%ecx
  402796:	74 29                	je     4027c1 <_FindPESection+0x41>
  402798:	83 e9 01             	sub    $0x1,%ecx
  40279b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40279f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4027a4:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4027a8:	49 39 d0             	cmp    %rdx,%r8
  4027ab:	4c 89 c1             	mov    %r8,%rcx
  4027ae:	77 08                	ja     4027b8 <_FindPESection+0x38>
  4027b0:	03 48 08             	add    0x8(%rax),%ecx
  4027b3:	48 39 ca             	cmp    %rcx,%rdx
  4027b6:	72 0b                	jb     4027c3 <_FindPESection+0x43>
  4027b8:	48 83 c0 28          	add    $0x28,%rax
  4027bc:	4c 39 c8             	cmp    %r9,%rax
  4027bf:	75 e3                	jne    4027a4 <_FindPESection+0x24>
  4027c1:	31 c0                	xor    %eax,%eax
  4027c3:	f3 c3                	repz retq 
  4027c5:	90                   	nop
  4027c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027cd:	00 00 00 

00000000004027d0 <_FindPESectionByName>:
  4027d0:	57                   	push   %rdi
  4027d1:	56                   	push   %rsi
  4027d2:	53                   	push   %rbx
  4027d3:	48 83 ec 20          	sub    $0x20,%rsp
  4027d7:	48 89 ce             	mov    %rcx,%rsi
  4027da:	e8 d1 03 00 00       	callq  402bb0 <strlen>
  4027df:	48 83 f8 08          	cmp    $0x8,%rax
  4027e3:	77 69                	ja     40284e <_FindPESectionByName+0x7e>
  4027e5:	48 8b 15 04 1b 00 00 	mov    0x1b04(%rip),%rdx        # 4042f0 <.refptr.__image_base__>
  4027ec:	31 db                	xor    %ebx,%ebx
  4027ee:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027f3:	74 0b                	je     402800 <_FindPESectionByName+0x30>
  4027f5:	48 89 d8             	mov    %rbx,%rax
  4027f8:	48 83 c4 20          	add    $0x20,%rsp
  4027fc:	5b                   	pop    %rbx
  4027fd:	5e                   	pop    %rsi
  4027fe:	5f                   	pop    %rdi
  4027ff:	c3                   	retq   
  402800:	48 89 d1             	mov    %rdx,%rcx
  402803:	e8 38 ff ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402808:	85 c0                	test   %eax,%eax
  40280a:	74 e9                	je     4027f5 <_FindPESectionByName+0x25>
  40280c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402810:	48 01 d0             	add    %rdx,%rax
  402813:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  402817:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
  40281c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402820:	85 c0                	test   %eax,%eax
  402822:	74 2a                	je     40284e <_FindPESectionByName+0x7e>
  402824:	83 e8 01             	sub    $0x1,%eax
  402827:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40282b:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402830:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402836:	48 89 f2             	mov    %rsi,%rdx
  402839:	48 89 d9             	mov    %rbx,%rcx
  40283c:	e8 67 03 00 00       	callq  402ba8 <strncmp>
  402841:	85 c0                	test   %eax,%eax
  402843:	74 b0                	je     4027f5 <_FindPESectionByName+0x25>
  402845:	48 83 c3 28          	add    $0x28,%rbx
  402849:	48 39 fb             	cmp    %rdi,%rbx
  40284c:	75 e2                	jne    402830 <_FindPESectionByName+0x60>
  40284e:	31 db                	xor    %ebx,%ebx
  402850:	48 89 d8             	mov    %rbx,%rax
  402853:	48 83 c4 20          	add    $0x20,%rsp
  402857:	5b                   	pop    %rbx
  402858:	5e                   	pop    %rsi
  402859:	5f                   	pop    %rdi
  40285a:	c3                   	retq   
  40285b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402860 <__mingw_GetSectionForAddress>:
  402860:	48 83 ec 28          	sub    $0x28,%rsp
  402864:	4c 8b 0d 85 1a 00 00 	mov    0x1a85(%rip),%r9        # 4042f0 <.refptr.__image_base__>
  40286b:	31 d2                	xor    %edx,%edx
  40286d:	49 89 c8             	mov    %rcx,%r8
  402870:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402876:	74 08                	je     402880 <__mingw_GetSectionForAddress+0x20>
  402878:	48 89 d0             	mov    %rdx,%rax
  40287b:	48 83 c4 28          	add    $0x28,%rsp
  40287f:	c3                   	retq   
  402880:	4c 89 c9             	mov    %r9,%rcx
  402883:	e8 b8 fe ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402888:	85 c0                	test   %eax,%eax
  40288a:	74 ec                	je     402878 <__mingw_GetSectionForAddress+0x18>
  40288c:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402890:	4c 89 c1             	mov    %r8,%rcx
  402893:	4c 29 c9             	sub    %r9,%rcx
  402896:	4c 01 c8             	add    %r9,%rax
  402899:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  40289d:	48 8d 54 10 18       	lea    0x18(%rax,%rdx,1),%rdx
  4028a2:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  4028a6:	85 c0                	test   %eax,%eax
  4028a8:	74 33                	je     4028dd <__mingw_GetSectionForAddress+0x7d>
  4028aa:	83 e8 01             	sub    $0x1,%eax
  4028ad:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4028b1:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
  4028b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028bd:	00 00 00 
  4028c0:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
  4028c4:	4c 39 c1             	cmp    %r8,%rcx
  4028c7:	4c 89 c0             	mov    %r8,%rax
  4028ca:	72 08                	jb     4028d4 <__mingw_GetSectionForAddress+0x74>
  4028cc:	03 42 08             	add    0x8(%rdx),%eax
  4028cf:	48 39 c1             	cmp    %rax,%rcx
  4028d2:	72 a4                	jb     402878 <__mingw_GetSectionForAddress+0x18>
  4028d4:	48 83 c2 28          	add    $0x28,%rdx
  4028d8:	4c 39 ca             	cmp    %r9,%rdx
  4028db:	75 e3                	jne    4028c0 <__mingw_GetSectionForAddress+0x60>
  4028dd:	31 d2                	xor    %edx,%edx
  4028df:	48 89 d0             	mov    %rdx,%rax
  4028e2:	48 83 c4 28          	add    $0x28,%rsp
  4028e6:	c3                   	retq   
  4028e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ee:	00 00 

00000000004028f0 <__mingw_GetSectionCount>:
  4028f0:	48 83 ec 28          	sub    $0x28,%rsp
  4028f4:	48 8b 15 f5 19 00 00 	mov    0x19f5(%rip),%rdx        # 4042f0 <.refptr.__image_base__>
  4028fb:	45 31 c0             	xor    %r8d,%r8d
  4028fe:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402903:	74 0b                	je     402910 <__mingw_GetSectionCount+0x20>
  402905:	44 89 c0             	mov    %r8d,%eax
  402908:	48 83 c4 28          	add    $0x28,%rsp
  40290c:	c3                   	retq   
  40290d:	0f 1f 00             	nopl   (%rax)
  402910:	48 89 d1             	mov    %rdx,%rcx
  402913:	e8 28 fe ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402918:	85 c0                	test   %eax,%eax
  40291a:	74 e9                	je     402905 <__mingw_GetSectionCount+0x15>
  40291c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402920:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402926:	44 89 c0             	mov    %r8d,%eax
  402929:	48 83 c4 28          	add    $0x28,%rsp
  40292d:	c3                   	retq   
  40292e:	66 90                	xchg   %ax,%ax

0000000000402930 <_FindPESectionExec>:
  402930:	48 83 ec 28          	sub    $0x28,%rsp
  402934:	4c 8b 0d b5 19 00 00 	mov    0x19b5(%rip),%r9        # 4042f0 <.refptr.__image_base__>
  40293b:	31 d2                	xor    %edx,%edx
  40293d:	49 89 c8             	mov    %rcx,%r8
  402940:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402946:	74 08                	je     402950 <_FindPESectionExec+0x20>
  402948:	48 89 d0             	mov    %rdx,%rax
  40294b:	48 83 c4 28          	add    $0x28,%rsp
  40294f:	c3                   	retq   
  402950:	4c 89 c9             	mov    %r9,%rcx
  402953:	e8 e8 fd ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402958:	85 c0                	test   %eax,%eax
  40295a:	74 ec                	je     402948 <_FindPESectionExec+0x18>
  40295c:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402960:	4c 01 c8             	add    %r9,%rax
  402963:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  402967:	48 8d 54 10 18       	lea    0x18(%rax,%rdx,1),%rdx
  40296c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402970:	85 c0                	test   %eax,%eax
  402972:	74 24                	je     402998 <_FindPESectionExec+0x68>
  402974:	83 e8 01             	sub    $0x1,%eax
  402977:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40297b:	48 8d 44 c2 28       	lea    0x28(%rdx,%rax,8),%rax
  402980:	f6 42 27 20          	testb  $0x20,0x27(%rdx)
  402984:	74 09                	je     40298f <_FindPESectionExec+0x5f>
  402986:	4d 85 c0             	test   %r8,%r8
  402989:	74 bd                	je     402948 <_FindPESectionExec+0x18>
  40298b:	49 83 e8 01          	sub    $0x1,%r8
  40298f:	48 83 c2 28          	add    $0x28,%rdx
  402993:	48 39 c2             	cmp    %rax,%rdx
  402996:	75 e8                	jne    402980 <_FindPESectionExec+0x50>
  402998:	31 d2                	xor    %edx,%edx
  40299a:	48 89 d0             	mov    %rdx,%rax
  40299d:	48 83 c4 28          	add    $0x28,%rsp
  4029a1:	c3                   	retq   
  4029a2:	0f 1f 40 00          	nopl   0x0(%rax)
  4029a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4029ad:	00 00 00 

00000000004029b0 <_GetPEImageBase>:
  4029b0:	48 83 ec 28          	sub    $0x28,%rsp
  4029b4:	4c 8b 05 35 19 00 00 	mov    0x1935(%rip),%r8        # 4042f0 <.refptr.__image_base__>
  4029bb:	31 d2                	xor    %edx,%edx
  4029bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4029c3:	74 0b                	je     4029d0 <_GetPEImageBase+0x20>
  4029c5:	48 89 d0             	mov    %rdx,%rax
  4029c8:	48 83 c4 28          	add    $0x28,%rsp
  4029cc:	c3                   	retq   
  4029cd:	0f 1f 00             	nopl   (%rax)
  4029d0:	4c 89 c1             	mov    %r8,%rcx
  4029d3:	e8 68 fd ff ff       	callq  402740 <_ValidateImageBase.part.0>
  4029d8:	85 c0                	test   %eax,%eax
  4029da:	49 0f 45 d0          	cmovne %r8,%rdx
  4029de:	48 89 d0             	mov    %rdx,%rax
  4029e1:	48 83 c4 28          	add    $0x28,%rsp
  4029e5:	c3                   	retq   
  4029e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4029ed:	00 00 00 

00000000004029f0 <_IsNonwritableInCurrentImage>:
  4029f0:	48 83 ec 28          	sub    $0x28,%rsp
  4029f4:	4c 8b 05 f5 18 00 00 	mov    0x18f5(%rip),%r8        # 4042f0 <.refptr.__image_base__>
  4029fb:	31 c0                	xor    %eax,%eax
  4029fd:	48 89 ca             	mov    %rcx,%rdx
  402a00:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402a06:	74 08                	je     402a10 <_IsNonwritableInCurrentImage+0x20>
  402a08:	48 83 c4 28          	add    $0x28,%rsp
  402a0c:	c3                   	retq   
  402a0d:	0f 1f 00             	nopl   (%rax)
  402a10:	4c 89 c1             	mov    %r8,%rcx
  402a13:	e8 28 fd ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402a18:	85 c0                	test   %eax,%eax
  402a1a:	74 ec                	je     402a08 <_IsNonwritableInCurrentImage+0x18>
  402a1c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402a20:	48 89 d1             	mov    %rdx,%rcx
  402a23:	4c 29 c1             	sub    %r8,%rcx
  402a26:	49 01 c0             	add    %rax,%r8
  402a29:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402a2e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402a33:	85 d2                	test   %edx,%edx
  402a35:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402a3a:	74 31                	je     402a6d <_IsNonwritableInCurrentImage+0x7d>
  402a3c:	83 ea 01             	sub    $0x1,%edx
  402a3f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402a43:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a4f:	00 
  402a50:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402a54:	4c 39 c1             	cmp    %r8,%rcx
  402a57:	4c 89 c2             	mov    %r8,%rdx
  402a5a:	72 08                	jb     402a64 <_IsNonwritableInCurrentImage+0x74>
  402a5c:	03 50 08             	add    0x8(%rax),%edx
  402a5f:	48 39 d1             	cmp    %rdx,%rcx
  402a62:	72 10                	jb     402a74 <_IsNonwritableInCurrentImage+0x84>
  402a64:	48 83 c0 28          	add    $0x28,%rax
  402a68:	4c 39 c8             	cmp    %r9,%rax
  402a6b:	75 e3                	jne    402a50 <_IsNonwritableInCurrentImage+0x60>
  402a6d:	31 c0                	xor    %eax,%eax
  402a6f:	48 83 c4 28          	add    $0x28,%rsp
  402a73:	c3                   	retq   
  402a74:	8b 40 24             	mov    0x24(%rax),%eax
  402a77:	f7 d0                	not    %eax
  402a79:	c1 e8 1f             	shr    $0x1f,%eax
  402a7c:	48 83 c4 28          	add    $0x28,%rsp
  402a80:	c3                   	retq   
  402a81:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a8d:	00 00 00 

0000000000402a90 <__mingw_enum_import_library_names>:
  402a90:	48 83 ec 28          	sub    $0x28,%rsp
  402a94:	4c 8b 1d 55 18 00 00 	mov    0x1855(%rip),%r11        # 4042f0 <.refptr.__image_base__>
  402a9b:	45 31 c9             	xor    %r9d,%r9d
  402a9e:	41 89 c8             	mov    %ecx,%r8d
  402aa1:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402aa7:	74 08                	je     402ab1 <__mingw_enum_import_library_names+0x21>
  402aa9:	4c 89 c8             	mov    %r9,%rax
  402aac:	48 83 c4 28          	add    $0x28,%rsp
  402ab0:	c3                   	retq   
  402ab1:	4c 89 d9             	mov    %r11,%rcx
  402ab4:	e8 87 fc ff ff       	callq  402740 <_ValidateImageBase.part.0>
  402ab9:	85 c0                	test   %eax,%eax
  402abb:	74 ec                	je     402aa9 <__mingw_enum_import_library_names+0x19>
  402abd:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  402ac1:	4c 01 d9             	add    %r11,%rcx
  402ac4:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  402aca:	85 c0                	test   %eax,%eax
  402acc:	74 db                	je     402aa9 <__mingw_enum_import_library_names+0x19>
  402ace:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  402ad2:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  402ad7:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402adb:	85 c9                	test   %ecx,%ecx
  402add:	74 ca                	je     402aa9 <__mingw_enum_import_library_names+0x19>
  402adf:	83 e9 01             	sub    $0x1,%ecx
  402ae2:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402ae6:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  402aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402af0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  402af4:	4c 39 c8             	cmp    %r9,%rax
  402af7:	4c 89 c9             	mov    %r9,%rcx
  402afa:	72 08                	jb     402b04 <__mingw_enum_import_library_names+0x74>
  402afc:	03 4a 08             	add    0x8(%rdx),%ecx
  402aff:	48 39 c8             	cmp    %rcx,%rax
  402b02:	72 1c                	jb     402b20 <__mingw_enum_import_library_names+0x90>
  402b04:	48 83 c2 28          	add    $0x28,%rdx
  402b08:	4c 39 d2             	cmp    %r10,%rdx
  402b0b:	75 e3                	jne    402af0 <__mingw_enum_import_library_names+0x60>
  402b0d:	45 31 c9             	xor    %r9d,%r9d
  402b10:	4c 89 c8             	mov    %r9,%rax
  402b13:	48 83 c4 28          	add    $0x28,%rsp
  402b17:	c3                   	retq   
  402b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b1f:	00 
  402b20:	4c 01 d8             	add    %r11,%rax
  402b23:	75 13                	jne    402b38 <__mingw_enum_import_library_names+0xa8>
  402b25:	eb e6                	jmp    402b0d <__mingw_enum_import_library_names+0x7d>
  402b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402b2e:	00 00 
  402b30:	41 83 e8 01          	sub    $0x1,%r8d
  402b34:	48 83 c0 14          	add    $0x14,%rax
  402b38:	8b 48 04             	mov    0x4(%rax),%ecx
  402b3b:	85 c9                	test   %ecx,%ecx
  402b3d:	75 07                	jne    402b46 <__mingw_enum_import_library_names+0xb6>
  402b3f:	8b 50 0c             	mov    0xc(%rax),%edx
  402b42:	85 d2                	test   %edx,%edx
  402b44:	74 c7                	je     402b0d <__mingw_enum_import_library_names+0x7d>
  402b46:	45 85 c0             	test   %r8d,%r8d
  402b49:	7f e5                	jg     402b30 <__mingw_enum_import_library_names+0xa0>
  402b4b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402b4f:	4d 01 d9             	add    %r11,%r9
  402b52:	4c 89 c8             	mov    %r9,%rax
  402b55:	48 83 c4 28          	add    $0x28,%rsp
  402b59:	c3                   	retq   
  402b5a:	90                   	nop
  402b5b:	90                   	nop
  402b5c:	90                   	nop
  402b5d:	90                   	nop
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <___chkstk_ms>:
  402b60:	51                   	push   %rcx
  402b61:	50                   	push   %rax
  402b62:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402b68:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402b6d:	72 19                	jb     402b88 <___chkstk_ms+0x28>
  402b6f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402b76:	48 83 09 00          	orq    $0x0,(%rcx)
  402b7a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402b80:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402b86:	77 e7                	ja     402b6f <___chkstk_ms+0xf>
  402b88:	48 29 c1             	sub    %rax,%rcx
  402b8b:	48 83 09 00          	orq    $0x0,(%rcx)
  402b8f:	58                   	pop    %rax
  402b90:	59                   	pop    %rcx
  402b91:	c3                   	retq   
  402b92:	90                   	nop
  402b93:	90                   	nop
  402b94:	90                   	nop
  402b95:	90                   	nop
  402b96:	90                   	nop
  402b97:	90                   	nop
  402b98:	90                   	nop
  402b99:	90                   	nop
  402b9a:	90                   	nop
  402b9b:	90                   	nop
  402b9c:	90                   	nop
  402b9d:	90                   	nop
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <vfprintf>:
  402ba0:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 40838c <__imp_vfprintf>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <strncmp>:
  402ba8:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 408384 <__imp_strncmp>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <strlen>:
  402bb0:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 40837c <__imp_strlen>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <signal>:
  402bb8:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 408374 <__imp_signal>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <printf>:
  402bc0:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 40836c <__imp_printf>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <memcpy>:
  402bc8:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 408364 <__imp_memcpy>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <malloc>:
  402bd0:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 40835c <__imp_malloc>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <fwrite>:
  402bd8:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 408354 <__imp_fwrite>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <free>:
  402be0:	ff 25 66 57 00 00    	jmpq   *0x5766(%rip)        # 40834c <__imp_free>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <fprintf>:
  402be8:	ff 25 56 57 00 00    	jmpq   *0x5756(%rip)        # 408344 <__imp_fprintf>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <exit>:
  402bf0:	ff 25 46 57 00 00    	jmpq   *0x5746(%rip)        # 40833c <__imp_exit>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <calloc>:
  402bf8:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 408334 <__imp_calloc>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <abort>:
  402c00:	ff 25 26 57 00 00    	jmpq   *0x5726(%rip)        # 40832c <__imp_abort>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <_unlock>:
  402c08:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 408324 <__imp__unlock>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <_onexit>:
  402c10:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 40831c <__imp__onexit>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <_lock>:
  402c18:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 408314 <__imp__lock>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <_initterm>:
  402c20:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 40830c <__imp__initterm>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <_cexit>:
  402c28:	ff 25 ce 56 00 00    	jmpq   *0x56ce(%rip)        # 4082fc <__imp__cexit>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <_amsg_exit>:
  402c30:	ff 25 be 56 00 00    	jmpq   *0x56be(%rip)        # 4082f4 <__imp__amsg_exit>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <__setusermatherr>:
  402c38:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 4082e4 <__imp___setusermatherr>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <__set_app_type>:
  402c40:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 4082dc <__imp___set_app_type>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <__lconv_init>:
  402c48:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 4082d4 <__imp___lconv_init>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <__iob_func>:
  402c50:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 4082cc <__imp___iob_func>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <__getmainargs>:
  402c58:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 4082bc <__imp___getmainargs>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <__dllonexit>:
  402c60:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 4082b4 <__imp___dllonexit>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <__C_specific_handler>:
  402c68:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 4082ac <__imp___C_specific_handler>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <_get_invalid_parameter_handler>:
  402c70:	48 8b 05 d9 4c 00 00 	mov    0x4cd9(%rip),%rax        # 407950 <handler>
  402c77:	c3                   	retq   
  402c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c7f:	00 

0000000000402c80 <_set_invalid_parameter_handler>:
  402c80:	48 89 c8             	mov    %rcx,%rax
  402c83:	48 87 05 c6 4c 00 00 	xchg   %rax,0x4cc6(%rip)        # 407950 <handler>
  402c8a:	c3                   	retq   
  402c8b:	90                   	nop
  402c8c:	90                   	nop
  402c8d:	90                   	nop
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <VirtualQuery>:
  402c90:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 40829c <__imp_VirtualQuery>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <VirtualProtect>:
  402c98:	ff 25 f6 55 00 00    	jmpq   *0x55f6(%rip)        # 408294 <__imp_VirtualProtect>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <UnhandledExceptionFilter>:
  402ca0:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 40828c <__imp_UnhandledExceptionFilter>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <TlsGetValue>:
  402ca8:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 408284 <__imp_TlsGetValue>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <TerminateProcess>:
  402cb0:	ff 25 c6 55 00 00    	jmpq   *0x55c6(%rip)        # 40827c <__imp_TerminateProcess>
  402cb6:	90                   	nop
  402cb7:	90                   	nop

0000000000402cb8 <Sleep>:
  402cb8:	ff 25 b6 55 00 00    	jmpq   *0x55b6(%rip)        # 408274 <__imp_Sleep>
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <SetUnhandledExceptionFilter>:
  402cc0:	ff 25 a6 55 00 00    	jmpq   *0x55a6(%rip)        # 40826c <__imp_SetUnhandledExceptionFilter>
  402cc6:	90                   	nop
  402cc7:	90                   	nop

0000000000402cc8 <RtlVirtualUnwind>:
  402cc8:	ff 25 96 55 00 00    	jmpq   *0x5596(%rip)        # 408264 <__imp_RtlVirtualUnwind>
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <RtlLookupFunctionEntry>:
  402cd0:	ff 25 86 55 00 00    	jmpq   *0x5586(%rip)        # 40825c <__imp_RtlLookupFunctionEntry>
  402cd6:	90                   	nop
  402cd7:	90                   	nop

0000000000402cd8 <RtlCaptureContext>:
  402cd8:	ff 25 76 55 00 00    	jmpq   *0x5576(%rip)        # 408254 <__imp_RtlCaptureContext>
  402cde:	90                   	nop
  402cdf:	90                   	nop

0000000000402ce0 <RtlAddFunctionTable>:
  402ce0:	ff 25 66 55 00 00    	jmpq   *0x5566(%rip)        # 40824c <__imp_RtlAddFunctionTable>
  402ce6:	90                   	nop
  402ce7:	90                   	nop

0000000000402ce8 <QueryPerformanceCounter>:
  402ce8:	ff 25 56 55 00 00    	jmpq   *0x5556(%rip)        # 408244 <__imp_QueryPerformanceCounter>
  402cee:	90                   	nop
  402cef:	90                   	nop

0000000000402cf0 <LeaveCriticalSection>:
  402cf0:	ff 25 46 55 00 00    	jmpq   *0x5546(%rip)        # 40823c <__imp_LeaveCriticalSection>
  402cf6:	90                   	nop
  402cf7:	90                   	nop

0000000000402cf8 <InitializeCriticalSection>:
  402cf8:	ff 25 36 55 00 00    	jmpq   *0x5536(%rip)        # 408234 <__imp_InitializeCriticalSection>
  402cfe:	90                   	nop
  402cff:	90                   	nop

0000000000402d00 <GetTickCount>:
  402d00:	ff 25 26 55 00 00    	jmpq   *0x5526(%rip)        # 40822c <__imp_GetTickCount>
  402d06:	90                   	nop
  402d07:	90                   	nop

0000000000402d08 <GetSystemTimeAsFileTime>:
  402d08:	ff 25 16 55 00 00    	jmpq   *0x5516(%rip)        # 408224 <__imp_GetSystemTimeAsFileTime>
  402d0e:	90                   	nop
  402d0f:	90                   	nop

0000000000402d10 <GetStartupInfoA>:
  402d10:	ff 25 06 55 00 00    	jmpq   *0x5506(%rip)        # 40821c <__imp_GetStartupInfoA>
  402d16:	90                   	nop
  402d17:	90                   	nop

0000000000402d18 <GetLastError>:
  402d18:	ff 25 f6 54 00 00    	jmpq   *0x54f6(%rip)        # 408214 <__imp_GetLastError>
  402d1e:	90                   	nop
  402d1f:	90                   	nop

0000000000402d20 <GetCurrentThreadId>:
  402d20:	ff 25 e6 54 00 00    	jmpq   *0x54e6(%rip)        # 40820c <__imp_GetCurrentThreadId>
  402d26:	90                   	nop
  402d27:	90                   	nop

0000000000402d28 <GetCurrentProcessId>:
  402d28:	ff 25 d6 54 00 00    	jmpq   *0x54d6(%rip)        # 408204 <__imp_GetCurrentProcessId>
  402d2e:	90                   	nop
  402d2f:	90                   	nop

0000000000402d30 <GetCurrentProcess>:
  402d30:	ff 25 c6 54 00 00    	jmpq   *0x54c6(%rip)        # 4081fc <__imp_GetCurrentProcess>
  402d36:	90                   	nop
  402d37:	90                   	nop

0000000000402d38 <EnterCriticalSection>:
  402d38:	ff 25 b6 54 00 00    	jmpq   *0x54b6(%rip)        # 4081f4 <__imp_EnterCriticalSection>
  402d3e:	90                   	nop
  402d3f:	90                   	nop

0000000000402d40 <DeleteCriticalSection>:
  402d40:	ff 25 a6 54 00 00    	jmpq   *0x54a6(%rip)        # 4081ec <__IAT_start__>
  402d46:	90                   	nop
  402d47:	90                   	nop
  402d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d4f:	00 

0000000000402d50 <register_frame_ctor>:
  402d50:	55                   	push   %rbp
  402d51:	48 89 e5             	mov    %rsp,%rbp
  402d54:	5d                   	pop    %rbp
  402d55:	e9 d6 e7 ff ff       	jmpq   401530 <__gcc_register_frame>
  402d5a:	90                   	nop
  402d5b:	90                   	nop
  402d5c:	90                   	nop
  402d5d:	90                   	nop
  402d5e:	90                   	nop
  402d5f:	90                   	nop

0000000000402d60 <__CTOR_LIST__>:
  402d60:	ff                   	(bad)  
  402d61:	ff                   	(bad)  
  402d62:	ff                   	(bad)  
  402d63:	ff                   	(bad)  
  402d64:	ff                   	(bad)  
  402d65:	ff                   	(bad)  
  402d66:	ff                   	(bad)  
  402d67:	ff                   	.byte 0xff

0000000000402d68 <.ctors.65535>:
  402d68:	50                   	push   %rax
  402d69:	2d 40 00 00 00       	sub    $0x40,%eax
	...

0000000000402d78 <__DTOR_LIST__>:
  402d78:	ff                   	(bad)  
  402d79:	ff                   	(bad)  
  402d7a:	ff                   	(bad)  
  402d7b:	ff                   	(bad)  
  402d7c:	ff                   	(bad)  
  402d7d:	ff                   	(bad)  
  402d7e:	ff                   	(bad)  
  402d7f:	ff 00                	incl   (%rax)
  402d81:	00 00                	add    %al,(%rax)
  402d83:	00 00                	add    %al,(%rax)
  402d85:	00 00                	add    %al,(%rax)
	...
