���ɷ�ʽ��
1.SystemXiri.apkǩƽ̨ϵͳǩ���ŵ�system app����
2.������APK�ŵ�system/appĿ¼��
3.������.so�ļ��ŵ�system/libĿ¼��
4.��xiriservice_tcl�ŵ�system/binĿ¼�£�������755Ȩ��
5.��addtails.pcm�ŵ�/system/mediaĿ¼�£�������755Ȩ��
6.��Ҫ��xiriservice_tcl���뵽init.rc�У���֤�俪���ں�̨���С�
===================================================================

˵����
1.�˴ζ�TCLʹ�õ�Ӧ�ö�������������
2.��Ҫ��xiriservice_tcl���õ�system bin Ŀ¼�£�
�����ÿ��������������÷����޸������ű��������ű�һ����� /init.rc ����ƽ̨�ض��� /init.****.rc �ļ���,���         service xiriservice /system/bin/xiriservice_tcl  class main  oneshot
3.��Ҫע�����libphonecost.so�� �⼸��so,������������so�ļ�������ĳ��������ƣ�������Ҳ����������������ʱ����Ҫ���⼸��so�ļ����˵���
                               liblsopencfg.so
                               libpinyin.so
                              libsystemcommongrm.so
                               libbasicphrasegrm.so
                               libmaindict.so
                               libmspkcfg.so
