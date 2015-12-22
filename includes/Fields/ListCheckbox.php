<?php if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * Class NF_Fields_CheckboxList
 */
class NF_Fields_ListCheckbox extends NF_Abstracts_List
{
    protected $_name = 'listcheckbox';

    protected $_nicename = 'Checkbox List';

    protected $_section = '';

    protected $_templates = 'listcheckbox';

    protected $_old_classname = 'list-checkbox';

    public function __construct()
    {
        parent::__construct();

        $this->_nicename = __( 'Checkbox List', 'ninja-forms' );
    }
}