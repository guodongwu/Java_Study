�}?    ��Q����J�#���
h���ot����{f�[�-t����.�T1eǨ�?���}T��]{�Q�L�m�y�9�Z�})�8�G��х�o����<V`��"7�W�0p�9��D[*�o5�H[��1�#Bb���κ���岡I��]5d��b�E����1.��*<�^Z�#R�F����������E��^m�%�7���zqi?��'2����/�����_Z[�����|M&�m�`�X:�8s�,ހR��T_Np����Gi�Y5 �s4ӡf%������q��\Y��[}��������v�?���B�bvNI�%d���$rxx�E1� '�B���@�>a��c =a�e��b��(�'S]@�N��C���XK��X�{~/��Z���&l�iu������Ҿ��C<�'��m�4TF#(������5��9H�aw�M�}��ᶚJ.�	�9s���(�mb�,�kf�j���doN�8��x�e�ict")
public class DictController {
    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private DictService dictService;

    @RequestMapping("/showDict")
    public String showDict(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");
        List<Dict> dictList = dictService.findAll();
        model.addAttribute("dictList",dictList);
        return "showDict";
    }
}
