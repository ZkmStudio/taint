
test:     file format elf32-i386


Disassembly of section .init:

0804838c <_init>:
 804838c:	55                   	push   %ebp
 804838d:	89 e5                	mov    %esp,%ebp
 804838f:	53                   	push   %ebx
 8048390:	83 ec 04             	sub    $0x4,%esp
 8048393:	e8 00 00 00 00       	call   8048398 <_init+0xc>
 8048398:	5b                   	pop    %ebx
 8048399:	81 c3 a0 14 00 00    	add    $0x14a0,%ebx
 804839f:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80483a5:	85 d2                	test   %edx,%edx
 80483a7:	74 05                	je     80483ae <_init+0x22>
 80483a9:	e8 52 00 00 00       	call   8048400 <__gmon_start__@plt>
 80483ae:	58                   	pop    %eax
 80483af:	5b                   	pop    %ebx
 80483b0:	c9                   	leave  
 80483b1:	c3                   	ret    

Disassembly of section .plt:

080483c0 <printf@plt-0x10>:
 80483c0:	ff 35 3c 98 04 08    	pushl  0x804983c
 80483c6:	ff 25 40 98 04 08    	jmp    *0x8049840
 80483cc:	00 00                	add    %al,(%eax)
	...

080483d0 <printf@plt>:
 80483d0:	ff 25 44 98 04 08    	jmp    *0x8049844
 80483d6:	68 00 00 00 00       	push   $0x0
 80483db:	e9 e0 ff ff ff       	jmp    80483c0 <_init+0x34>

080483e0 <fclose@plt>:
 80483e0:	ff 25 48 98 04 08    	jmp    *0x8049848
 80483e6:	68 08 00 00 00       	push   $0x8
 80483eb:	e9 d0 ff ff ff       	jmp    80483c0 <_init+0x34>

080483f0 <puts@plt>:
 80483f0:	ff 25 4c 98 04 08    	jmp    *0x804984c
 80483f6:	68 10 00 00 00       	push   $0x10
 80483fb:	e9 c0 ff ff ff       	jmp    80483c0 <_init+0x34>

08048400 <__gmon_start__@plt>:
 8048400:	ff 25 50 98 04 08    	jmp    *0x8049850
 8048406:	68 18 00 00 00       	push   $0x18
 804840b:	e9 b0 ff ff ff       	jmp    80483c0 <_init+0x34>

08048410 <__libc_start_main@plt>:
 8048410:	ff 25 54 98 04 08    	jmp    *0x8049854
 8048416:	68 20 00 00 00       	push   $0x20
 804841b:	e9 a0 ff ff ff       	jmp    80483c0 <_init+0x34>

08048420 <fopen@plt>:
 8048420:	ff 25 58 98 04 08    	jmp    *0x8049858
 8048426:	68 28 00 00 00       	push   $0x28
 804842b:	e9 90 ff ff ff       	jmp    80483c0 <_init+0x34>

08048430 <putchar@plt>:
 8048430:	ff 25 5c 98 04 08    	jmp    *0x804985c
 8048436:	68 30 00 00 00       	push   $0x30
 804843b:	e9 80 ff ff ff       	jmp    80483c0 <_init+0x34>

08048440 <fgetc@plt>:
 8048440:	ff 25 60 98 04 08    	jmp    *0x8049860
 8048446:	68 38 00 00 00       	push   $0x38
 804844b:	e9 70 ff ff ff       	jmp    80483c0 <_init+0x34>

Disassembly of section .text:

08048450 <_start>:
 8048450:	31 ed                	xor    %ebp,%ebp
 8048452:	5e                   	pop    %esi
 8048453:	89 e1                	mov    %esp,%ecx
 8048455:	83 e4 f0             	and    $0xfffffff0,%esp
 8048458:	50                   	push   %eax
 8048459:	54                   	push   %esp
 804845a:	52                   	push   %edx
 804845b:	68 e0 85 04 08       	push   $0x80485e0
 8048460:	68 f0 85 04 08       	push   $0x80485f0
 8048465:	51                   	push   %ecx
 8048466:	56                   	push   %esi
 8048467:	68 3c 85 04 08       	push   $0x804853c
 804846c:	e8 9f ff ff ff       	call   8048410 <__libc_start_main@plt>
 8048471:	f4                   	hlt    
 8048472:	90                   	nop
 8048473:	90                   	nop
 8048474:	90                   	nop
 8048475:	90                   	nop
 8048476:	90                   	nop
 8048477:	90                   	nop
 8048478:	90                   	nop
 8048479:	90                   	nop
 804847a:	90                   	nop
 804847b:	90                   	nop
 804847c:	90                   	nop
 804847d:	90                   	nop
 804847e:	90                   	nop
 804847f:	90                   	nop

08048480 <deregister_tm_clones>:
 8048480:	b8 6f 98 04 08       	mov    $0x804986f,%eax
 8048485:	2d 6c 98 04 08       	sub    $0x804986c,%eax
 804848a:	83 f8 06             	cmp    $0x6,%eax
 804848d:	77 02                	ja     8048491 <deregister_tm_clones+0x11>
 804848f:	f3 c3                	repz ret 
 8048491:	b8 00 00 00 00       	mov    $0x0,%eax
 8048496:	85 c0                	test   %eax,%eax
 8048498:	74 f5                	je     804848f <deregister_tm_clones+0xf>
 804849a:	55                   	push   %ebp
 804849b:	89 e5                	mov    %esp,%ebp
 804849d:	83 ec 18             	sub    $0x18,%esp
 80484a0:	c7 04 24 6c 98 04 08 	movl   $0x804986c,(%esp)
 80484a7:	ff d0                	call   *%eax
 80484a9:	c9                   	leave  
 80484aa:	c3                   	ret    
 80484ab:	90                   	nop
 80484ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080484b0 <register_tm_clones>:
 80484b0:	b8 6c 98 04 08       	mov    $0x804986c,%eax
 80484b5:	2d 6c 98 04 08       	sub    $0x804986c,%eax
 80484ba:	c1 f8 02             	sar    $0x2,%eax
 80484bd:	89 c2                	mov    %eax,%edx
 80484bf:	c1 ea 1f             	shr    $0x1f,%edx
 80484c2:	01 d0                	add    %edx,%eax
 80484c4:	d1 f8                	sar    %eax
 80484c6:	75 02                	jne    80484ca <register_tm_clones+0x1a>
 80484c8:	f3 c3                	repz ret 
 80484ca:	ba 00 00 00 00       	mov    $0x0,%edx
 80484cf:	85 d2                	test   %edx,%edx
 80484d1:	74 f5                	je     80484c8 <register_tm_clones+0x18>
 80484d3:	55                   	push   %ebp
 80484d4:	89 e5                	mov    %esp,%ebp
 80484d6:	83 ec 18             	sub    $0x18,%esp
 80484d9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484dd:	c7 04 24 6c 98 04 08 	movl   $0x804986c,(%esp)
 80484e4:	ff d2                	call   *%edx
 80484e6:	c9                   	leave  
 80484e7:	c3                   	ret    
 80484e8:	90                   	nop
 80484e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080484f0 <__do_global_dtors_aux>:
 80484f0:	80 3d 6c 98 04 08 00 	cmpb   $0x0,0x804986c
 80484f7:	75 13                	jne    804850c <__do_global_dtors_aux+0x1c>
 80484f9:	55                   	push   %ebp
 80484fa:	89 e5                	mov    %esp,%ebp
 80484fc:	83 ec 08             	sub    $0x8,%esp
 80484ff:	e8 7c ff ff ff       	call   8048480 <deregister_tm_clones>
 8048504:	c6 05 6c 98 04 08 01 	movb   $0x1,0x804986c
 804850b:	c9                   	leave  
 804850c:	f3 c3                	repz ret 
 804850e:	66 90                	xchg   %ax,%ax

08048510 <frame_dummy>:
 8048510:	a1 40 97 04 08       	mov    0x8049740,%eax
 8048515:	85 c0                	test   %eax,%eax
 8048517:	74 1e                	je     8048537 <frame_dummy+0x27>
 8048519:	b8 00 00 00 00       	mov    $0x0,%eax
 804851e:	85 c0                	test   %eax,%eax
 8048520:	74 15                	je     8048537 <frame_dummy+0x27>
 8048522:	55                   	push   %ebp
 8048523:	89 e5                	mov    %esp,%ebp
 8048525:	83 ec 18             	sub    $0x18,%esp
 8048528:	c7 04 24 40 97 04 08 	movl   $0x8049740,(%esp)
 804852f:	ff d0                	call   *%eax
 8048531:	c9                   	leave  
 8048532:	e9 79 ff ff ff       	jmp    80484b0 <register_tm_clones>
 8048537:	e9 74 ff ff ff       	jmp    80484b0 <register_tm_clones>

0804853c <main>:
 804853c:	55                   	push   %ebp
 804853d:	89 e5                	mov    %esp,%ebp
 804853f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048542:	83 ec 20             	sub    $0x20,%esp
 8048545:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8048549:	74 0e                	je     8048559 <main+0x1d>
 804854b:	c7 04 24 70 86 04 08 	movl   $0x8048670,(%esp)
 8048552:	e8 99 fe ff ff       	call   80483f0 <puts@plt>
 8048557:	eb 7e                	jmp    80485d7 <main+0x9b>
 8048559:	8b 45 0c             	mov    0xc(%ebp),%eax
 804855c:	83 c0 04             	add    $0x4,%eax
 804855f:	8b 00                	mov    (%eax),%eax
 8048561:	c7 44 24 04 96 86 04 	movl   $0x8048696,0x4(%esp)
 8048568:	08 
 8048569:	89 04 24             	mov    %eax,(%esp)
 804856c:	e8 af fe ff ff       	call   8048420 <fopen@plt>
 8048571:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048575:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 804857a:	75 1a                	jne    8048596 <main+0x5a>
 804857c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804857f:	83 c0 04             	add    $0x4,%eax
 8048582:	8b 00                	mov    (%eax),%eax
 8048584:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048588:	c7 04 24 98 86 04 08 	movl   $0x8048698,(%esp)
 804858f:	e8 3c fe ff ff       	call   80483d0 <printf@plt>
 8048594:	eb 41                	jmp    80485d7 <main+0x9b>
 8048596:	8b 44 24 18          	mov    0x18(%esp),%eax
 804859a:	89 04 24             	mov    %eax,(%esp)
 804859d:	e8 9e fe ff ff       	call   8048440 <fgetc@plt>
 80485a2:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80485a6:	eb 1c                	jmp    80485c4 <main+0x88>
 80485a8:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80485ac:	89 04 24             	mov    %eax,(%esp)
 80485af:	e8 7c fe ff ff       	call   8048430 <putchar@plt>
 80485b4:	8b 44 24 18          	mov    0x18(%esp),%eax
 80485b8:	89 04 24             	mov    %eax,(%esp)
 80485bb:	e8 80 fe ff ff       	call   8048440 <fgetc@plt>
 80485c0:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80485c4:	83 7c 24 1c ff       	cmpl   $0xffffffff,0x1c(%esp)
 80485c9:	75 dd                	jne    80485a8 <main+0x6c>
 80485cb:	8b 44 24 18          	mov    0x18(%esp),%eax
 80485cf:	89 04 24             	mov    %eax,(%esp)
 80485d2:	e8 09 fe ff ff       	call   80483e0 <fclose@plt>
 80485d7:	c9                   	leave  
 80485d8:	c3                   	ret    
 80485d9:	90                   	nop
 80485da:	90                   	nop
 80485db:	90                   	nop
 80485dc:	90                   	nop
 80485dd:	90                   	nop
 80485de:	90                   	nop
 80485df:	90                   	nop

080485e0 <__libc_csu_fini>:
 80485e0:	55                   	push   %ebp
 80485e1:	89 e5                	mov    %esp,%ebp
 80485e3:	5d                   	pop    %ebp
 80485e4:	c3                   	ret    
 80485e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485f0 <__libc_csu_init>:
 80485f0:	55                   	push   %ebp
 80485f1:	89 e5                	mov    %esp,%ebp
 80485f3:	57                   	push   %edi
 80485f4:	56                   	push   %esi
 80485f5:	53                   	push   %ebx
 80485f6:	e8 4f 00 00 00       	call   804864a <__i686.get_pc_thunk.bx>
 80485fb:	81 c3 3d 12 00 00    	add    $0x123d,%ebx
 8048601:	83 ec 1c             	sub    $0x1c,%esp
 8048604:	e8 83 fd ff ff       	call   804838c <_init>
 8048609:	8d bb 04 ff ff ff    	lea    -0xfc(%ebx),%edi
 804860f:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 8048615:	29 c7                	sub    %eax,%edi
 8048617:	c1 ff 02             	sar    $0x2,%edi
 804861a:	85 ff                	test   %edi,%edi
 804861c:	74 24                	je     8048642 <__libc_csu_init+0x52>
 804861e:	31 f6                	xor    %esi,%esi
 8048620:	8b 45 10             	mov    0x10(%ebp),%eax
 8048623:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048627:	8b 45 0c             	mov    0xc(%ebp),%eax
 804862a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804862e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048631:	89 04 24             	mov    %eax,(%esp)
 8048634:	ff 94 b3 00 ff ff ff 	call   *-0x100(%ebx,%esi,4)
 804863b:	83 c6 01             	add    $0x1,%esi
 804863e:	39 fe                	cmp    %edi,%esi
 8048640:	72 de                	jb     8048620 <__libc_csu_init+0x30>
 8048642:	83 c4 1c             	add    $0x1c,%esp
 8048645:	5b                   	pop    %ebx
 8048646:	5e                   	pop    %esi
 8048647:	5f                   	pop    %edi
 8048648:	5d                   	pop    %ebp
 8048649:	c3                   	ret    

0804864a <__i686.get_pc_thunk.bx>:
 804864a:	8b 1c 24             	mov    (%esp),%ebx
 804864d:	c3                   	ret    
 804864e:	90                   	nop
 804864f:	90                   	nop

Disassembly of section .fini:

08048650 <_fini>:
 8048650:	55                   	push   %ebp
 8048651:	89 e5                	mov    %esp,%ebp
 8048653:	53                   	push   %ebx
 8048654:	83 ec 04             	sub    $0x4,%esp
 8048657:	e8 00 00 00 00       	call   804865c <_fini+0xc>
 804865c:	5b                   	pop    %ebx
 804865d:	81 c3 dc 11 00 00    	add    $0x11dc,%ebx
 8048663:	59                   	pop    %ecx
 8048664:	5b                   	pop    %ebx
 8048665:	c9                   	leave  
 8048666:	c3                   	ret    
