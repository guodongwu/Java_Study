�}1?    ���E�%���#��
h��bn4���wx$P"O{�Z����eh���\	�����E-Oi�,�(�T�Q�yzsu�$�e8Ω�&��gY�:0d�;��g�|�:�ԝ��"#��ؤfAv� �9l9�H?�'ʇ�1]���g/rQT.ؑ�}��U��<CG�����	H��Z�h���N_�r �zL\�k�o	O2c�1ۄ�Q���FO�#.�0 ��`��-׈�u��[�P�c�s������/'�*�v��t���0��{���"Sq�f��S�/���C��5h�ۣ�ڗ�\Y��[}��������v�?���B�bvNI�%d���$rxx�E1� '�B���@�>a��c =a�e��b��(�'S]@�N��C���XK��X�{~/��Z���&l�iu������Ҿ��C<�'��m�4TF#(������5��9H�aw�M�}��ᶚJ.�	�9s���(�mb�,�kf�j���doN�8��x�e� Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");
        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);
        return "showUser";
    }
}