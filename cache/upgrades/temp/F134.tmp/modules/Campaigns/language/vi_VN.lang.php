<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2019 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */

if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

$mod_strings = array(
    'LBL_FROM_ADDR' => '"Từ" địa chỉ:',
    'LBL_REPLY_ADDR' => 'Địa chỉ "Trả lời":',
    'LBL_REPLY_NAME' => 'Tên "Trả lời":',

    'LBL_MODULE_NAME' => 'Chiến dịch',
    'LBL_MODULE_TITLE' => 'Chiến dịch: Tr.chính',
    'LBL_SEARCH_FORM_TITLE' => 'Tìm kiếm',
    'LBL_LIST_FORM_TITLE' => 'Danh sách',
    'LBL_NEWSLETTER_LIST_FORM_TITLE' => 'Danh sách tin',
    'LBL_CAMPAIGN_NAME' => 'Tên:',
    'LBL_CAMPAIGN' => 'Chiến dịch:',
    'LBL_NAME' => 'Tên:',
    'LBL_INVITEE' => 'Liên hệ',
    'LBL_LIST_CAMPAIGN_NAME' => 'Chiến dịch',
    'LBL_LIST_STATUS' => 'Tình trạng',
    'LBL_LIST_TYPE' => 'Loại',
    'LBL_LIST_START_DATE' => 'Ngày bắt đầu',
    'LBL_LIST_END_DATE' => 'Ngày kết thúc',
    'LBL_DATE_ENTERED' => 'Ngày tạo',
    'LBL_DATE_MODIFIED' => 'Ngày sửa',
    'LBL_MODIFIED' => 'Được sửa bởi:',
    'LBL_CREATED' => 'Tạo bởi:',
    'LBL_TEAM' => 'Nhóm:',
    'LBL_ASSIGNED_TO' => 'Giao cho:',
    'LBL_ASSIGNED_TO_ID' => 'Giao cho:',
    'LBL_ASSIGNED_TO_NAME' => 'Giao cho:',
    'LBL_CAMPAIGN_START_DATE' => 'Ngày bắt đầu:',
    'LBL_CAMPAIGN_END_DATE' => 'Ngày kết thúc:',
    'LBL_CAMPAIGN_STATUS' => 'Tình trạng:',
    'LBL_CAMPAIGN_BUDGET' => 'Ngân sách:',
    'LBL_CAMPAIGN_EXPECTED_COST' => 'Chi phí dự kiến:',
    'LBL_CAMPAIGN_ACTUAL_COST' => 'Chi phí thực:',
    'LBL_CAMPAIGN_EXPECTED_REVENUE' => 'Doanh thu dự kiến:',
    'LBL_CAMPAIGN_IMPRESSIONS' => 'Số lần hiển thị:',
    'LBL_CAMPAIGN_COST_PER_IMPRESSION' => 'Chi phí mỗi lần hiển thị:',
    'LBL_CAMPAIGN_COST_PER_CLICK_THROUGH' => 'CPC:',
    'LBL_CAMPAIGN_OPPORTUNITIES_WON' => 'Cơ hội đã thắng:',
    'LBL_CAMPAIGN_TYPE' => 'Loại:',
    'LBL_CAMPAIGN_OBJECTIVE' => 'Đối tượng chiến dịch:',
    'LBL_CAMPAIGN_CONTENT' => 'Mô tả:',
    'LBL_CAMPAIGN_INACTIVE_SCHEDULE' => "Chiến dịch '{0}' có trạng thái 'Không hoạt động'. Bạn phải đặt trạng thái chiến dịch là 'Hoạt động'.",
    'LNK_NEW_CAMPAIGN' => 'Tạo chiến dịch (Cơ bản)',
    'LNL_NEW_CAMPAIGN_WIZARD' => 'Tạo Chiến dịch',
    'LNK_CAMPAIGN_LIST' => 'Xem chiến dịch',
    'LNK_IMPORT_CAMPAIGNS' => 'Nhập chiến dịch',
    'LNK_NEW_PROSPECT' => 'Tạo đối tượng',
    'LNK_PROSPECT_LIST' => 'Xem đối tượng',
    'LNK_NEW_PROSPECT_LIST' => 'Tạo danh sách đối tượng',
    'LNK_PROSPECT_LIST_LIST' => 'Xem danh sách đối tượng',
    'LBL_MODIFIED_BY' => 'Được sửa bởi:',
    'LBL_CREATED_BY' => 'Tạo bởi:',
    'LBL_TRACKER_TITLE' => 'Lượt theo dõi chi tiết ',
    'LBL_TRACKER_KEY' => 'Khoá theo dõi:',
    'LBL_TRACKER_URL' => 'Tracker URL:',
    'LBL_TRACKER_TEXT' => 'Tên đường dẫn theo dõi:',
    'LBL_TRACKER_COUNT' => 'Đếm lượt theo dõi:',
    'LBL_REFER_URL' => 'Lượt theo dõi chuyển hướng URL:',
    'LBL_DEFAULT_SUBPANEL_TITLE' => 'Chiến dịch',
    'LBL_NEW_FORM_TITLE' => 'Chiến dịch mới',
    'LBL_TRACKED_URLS' => 'Theo dõi',
    'LBL_TRACKED_URLS_SUBPANEL_TITLE' => 'Theo dõi',
    'LBL_CAMPAIGN_ACCOUNTS_SUBPANEL_TITLE' => 'Tài khoản',
    'LBL_PROSPECT_LIST_SUBPANEL_TITLE' => 'Danh sách đối tượng',
    'LBL_EMAIL_MARKETING_SUBPANEL_TITLE' => 'Email quảng bá',
    'LNK_NEW_EMAIL_TEMPLATE' => 'Tạo Email Template',
    'LNK_EMAIL_TEMPLATE_LIST' => 'Xem Email Templates',
    'LBL_TRACK_BUTTON_TITLE' => 'Xem trạng thái',
    'LBL_TRACK_BUTTON_LABEL' => 'Xem trạng thái',
    'LBL_QUEUE_BUTTON_TITLE' => 'Gửi Emails',
    'LBL_QUEUE_BUTTON_LABEL' => 'Gửi Emails',
    'LBL_TEST_BUTTON_TITLE' => 'Gửi Test',
    'LBL_TEST_BUTTON_LABEL' => 'Gửi Test',
    'LBL_COPY_AND_PASTE_CODE' => 'Hoặc sao chép và dán html bên dưới vào trang hiện tại',
    'LBL_CHARSET_NOTICE' => 'GHI CHÚ: Vui lòng đảm bảo rằng trang có chứa mẫu web-to-lead có các dòng sau trong phần &lt;head&gt; section:',

    'LBL_TODETAIL_BUTTON_TITLE' => 'Xem chi tiết',
    'LBL_TODETAIL_BUTTON_LABEL' => 'Xem chi tiết',

    'LBL_DEFAULT' => 'Tất cả danh sách đối tượng',
    'LBL_MESSAGE_QUEUE_TITLE' => 'Hàng đợi',

    'LBL_LOG_ENTRIES_TARGETED_TITLE' => 'Tin nhắn đã gửi/đã cố gắng',
    'LBL_LOG_ENTRIES_SEND_ERROR_TITLE' => 'Tin nhắn bị trả về, khác',
    'LBL_LOG_ENTRIES_INVALID_EMAIL_TITLE' => 'Tin nhắn bị trả về, không hợp lệ',
    'LBL_LOG_ENTRIES_LINK_TITLE' => 'Bấm vào thông qua liên kết',
    'LBL_LOG_ENTRIES_VIEWED_TITLE' => 'Xem tin nhắn',
    'LBL_LOG_ENTRIES_REMOVED_TITLE' => 'Từ chối nhận',
    'LBL_LOG_ENTRIES_LEAD_TITLE' => 'Đầu mối đã tạo',
    'LBL_CAMPAIGN_LEAD_SUBPANEL_TITLE' => 'Đầu mối',
    'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Cơ hội',
    'LBL_LOG_ENTRIES_CONTACT_TITLE' => 'Liên hệ đã được tạo',

    //error messages.
    'ERR_SENDING_NOW' => 'Thư đang được gửi, hãy thử lại sau.',

    'LBL_TRACK_ROI_BUTTON_LABEL' => 'Xem ROI',
    'LBL_TRACK_DELETE_BUTTON_TITLE' => 'Xóa mục kiểm tra',
    'LBL_TRACK_DELETE_BUTTON_LABEL' => 'Xóa mục kiểm tra',
    'LBL_TRACK_DELETE_CONFIRM' => 'Tùy chọn này sẽ xóa các mục lịch sử được tạo ra bởi quá trình chạy thử. Tiếp tục?',
    'ERR_NO_MAILBOX' => "Các thông điệp Marketing sau không có tài khoản mail liên kết với chúng. <BR> Hãy sửa lại điều đó trước khi tiếp tục.",
    'LBL_LIST_TO_ACTIVITY' => 'Xem trạng thái',
    'LBL_CURRENCY' => 'Tiền tệ:',
    'LBL_TARGETED' => 'Đối tượng',
    'LBL_TOTAL_TARGETED' => 'Tổng số đối tượng',
    'LBL_CAMPAIGN_FREQUENCY' => 'Tần suất:',
    'LBL_NEWSLETTERS' => 'Xem danh sách tin',
    'LBL_NEWSLETTER' => 'Bản tin',
    'LBL_SURVEY' => 'Khảo sát',
    'LBL_NEWSLETTER_FORENTRY' => 'NewsLetter',
    'LBL_CREATE_NEWSLETTER' => 'Tạo Newsletter',
    'LBL_LIST_NAME' => 'Tên',
    'LBL_INBOUND_EMAIL_SETTINGS' => 'Cài đặt Email đến',
    'LBL_INBOUND_EMAIL_SETTINGS_TITLE' => 'Cài đặt Email đến (info)',
    'LBL_INBOUND_EMAIL_CREATE' => 'Tạo Email đến',
    'LBL_INBOUND_EMAIL_CREATE_TITLE' => 'Tạo Email đến (info)',
    'LBL_STATUS_TEXT' => 'Trạng thái:',
    'LBL_FROM_MAILBOX_NAME' => 'Tài khoản xử lý trả về:',
    'LBL_FROM_MAILBOX_TITLE' => 'Tài khoản Email xử lý trả về:',
    'LBL_OUTBOUND_MAILBOX_NAME' => 'Tài khoản email gửi đi:',
    'LBL_FROM_NAME' => 'Từ tên:',
    'LBL_START_DATE_TIME' => 'Lịch Ngày và Giờ:',
    'LBL_DATE_START' => 'Ngày bắt đầu ',
    'LBL_TIME_START' => 'Thời gian bắt đầu ',
    'LBL_TEMPLATE' => 'Mẫu E-mail:',
    'LBL_TEMPLATE_FIELD' => 'Mẫu E-mail:',
    'LBL_SUBJECT' => 'Chủ đề:',
    'LBL_WIDTH' => 'Chiều rộng mặc định:',
    'LBL_CREATE_EMAIL_TEMPLATE' => 'Tạo',
    'LBL_MESSAGE_FOR' => 'Gửi Thông điệp này đến:',
    'LBL_FINISH' => 'Kết thúc',
    'LBL_ALL_PROSPECT_LISTS' => 'Tất cả các ds đối tượng trong Chiến dịch.',
    'LBL_EDIT_EMAIL_TEMPLATE' => 'Sửa',
    'LBL_EMAIL_SETUP_WIZARD' => 'Cài đặt Email',
    'LBL_DIAGNOSTIC_WIZARD' => 'Xem Chẩn đoán',
    'LBL_ALREADY_SUBSCRIBED_HEADER' => 'Đăng ký nhận bản tin',
    'LBL_UNSUBSCRIBED_HEADER' => 'Có sẵn / Bản tin Hủy đăng ký',
    'LBL_UNSUBSCRIBED_HEADER_EXPL' => 'Di chuyển bản tin tới Bản tin có sẵn/Bản tin đã hủy đăng ký vào danh sách sẽ thêm liên hệ vào Danh sách hủy đăng ký cho bản tin này. Nó sẽ không loại bỏ các liên lạc từ Danh sách đăng ký ban đầu hoặc Danh sách mục tiêu.',
    'LBL_FILTER_CHART_BY' => 'Lọc biểu đồ theo:',
    'LBL_MANAGE_SUBSCRIPTIONS_TITLE' => 'Quản lý đăng ký',
    'LBL_MARK_AS_SENT' => 'Đánh dấu đã gửi',
    'LBL_DEFAULT_LIST_ENTRIES_WERE_PROCESSED' => 'Mục đã được xử lý',
    //newsletter wizard
    'LBL_EDIT_TRACKER_NAME' => 'Tên theo dõi',
    'LBL_EDIT_TRACKER_URL' => 'Lượt theo dõi URL',
    'LBL_EDIT_OPT_OUT_' => 'Liên kết chọn không tham gia?',
    'LBL_EDIT_OPT_OUT' => 'Liên kết chọn không tham gia:',
    'LBL_UNSUBSCRIPTION_LIST_NAME' => 'Danh sách hủy theo dõi:',
    'LBL_SUBSCRIPTION_LIST_NAME' => 'Danh sách theo dõi:',
    'LBL_TEST_LIST_NAME' => 'Danh sách kiểm tra:',
    'LBL_UNSUBSCRIPTION_TYPE_NAME' => 'Hủy theo dõi',
    'LBL_SUBSCRIPTION_TYPE_NAME' => 'Theo dõi',
    'LBL_TEST_TYPE_NAME' => 'Thử nghiệm',
    'LBL_UNSUBSCRIPTION_LIST' => 'Danh sách hủy theo dõi',
    'LBL_SUBSCRIPTION_LIST' => 'Danh sách theo dõi',
    'LBL_MRKT_NAME' => 'Tên Email Marketing',
    'LBL_MRKT_NAME_FIELD' => 'Tên Email Marketing:',
    'LBL_TEST_LIST' => 'Danh sách Test',
    'LBL_WIZARD_HEADER_MESSAGE' => 'Điền vào các trường bắt buộc để giúp xác định chiến dịch.',
    'LBL_WIZARD_BUDGET_MESSAGE' => 'Nhập ngân sách để tính lợi tức đầu tư (ROI)',
    'LBL_WIZARD_TARGET_MESSAGE1' => 'Chọn hoặc tạo danh sách mục tiêu để sử dụng cho chiến dịch của bạn. Danh sách này sẽ được sử dụng trong khi gửi email với thông điệp Marketing của bạn.',
    'LBL_WIZARD_TARGET_MESSAGE2' => 'Tạo mới danh sách mục tiêu:',
    'LBL_WIZARD_TRACKER_MESSAGE' => 'Xác định một URL theo dõi ở đây để sử dụng với chiến dịch này. Bạn phải nhập tên và URL để tạo sự theo dõi.',
    'LBL_HOME_START_MESSAGE' => 'Bạn muốn tạo chiến dịch nào?',
    'LBL_WIZARD_LAST_STEP_MESSAGE' => '             Bạn đang ở bước cuối cùng.',
    'LBL_WIZARD_FIRST_STEP_MESSAGE' => '             Bạn đang ở bước đầu tiên.',
    'LBL_WIZ_NEWSLETTER_TITLE_STEP1' => 'Tiêu đề Chiến dịch',
    'LBL_WIZ_NEWSLETTER_TITLE_STEP2' => 'Ngân sách chiến dịch',
    'LBL_WIZ_NEWSLETTER_TITLE_STEP3' => 'Chiến dịch URL theo dõi ',
    'LBL_WIZ_NEWSLETTER_TITLE_STEP4' => 'Đăng ký thông tin',
    'LBL_WIZ_MARKETING_TITLE' => 'Email Marketing',
    'LBL_WIZ_SENDMAIL_TITLE' => 'Chọn bản ghi Email Marketing',
    'LBL_WIZ_EMAILTPL_TITLE' => 'Chọn Email mẫu',
    'LBL_WIZ_NEWSLETTER_TITLE_SUMMARY' => 'Tóm tắt',
    'LBL_NAVIGATION_MENU_GEN1' => 'Tiêu đề Chiến dịch',
    'LBL_NAVIGATION_MENU_GEN2' => 'Ngân sách',
    'LBL_NAVIGATION_MENU_TRACKERS' => 'Theo dõi',
    'LBL_NAVIGATION_MENU_MARKETING' => 'Marketing',
    'LBL_NAVIGATION_MENU_SEND_EMAIL' => 'Gửi Email',
    'LBL_NAVIGATION_MENU_SUBSCRIPTIONS' => 'Đăng ký',
    'LBL_NAVIGATION_MENU_SUMMARY' => 'Tóm tắt',
    'LBL_NAVIGATION_MENU_SEND_EMAIL_AND_SUMMARY' => 'Gửi Email và tóm tắt',
    'LBL_SUBSCRIPTION_TARGET_WIZARD_DESC' => 'Điều này sẽ xác định danh mục tiêu của kiểu đăng ký cho chiến dịch này. <br>Danh sách mục tiêu này sẽ được sử dụng để gửi email cho chiến dịch này. <br>Nếu bạn không có sẵn một danh sách, một danh sách trống sẽ được tạo ra cho bạn.',
    'LBL_UNSUBSCRIPTION_TARGET_WIZARD_DESC' => 'Điều này sẽ xác định danh mục tiêu của kiểu hủy đăng ký cho chiến dịch này. <br>Danh sách mục tiêu này sẽ được sử dụng để gửi email cho chiến dịch này. <br>Nếu bạn không có sẵn một danh sách, một danh sách trống sẽ được tạo ra cho bạn.',
    'LBL_TEST_TARGET_WIZARD_DESC' => 'Điều này sẽ xác định danh sách mục tiêu của kiểu thử nghiệm cho chiến dịch này. <br>Danh sách mục tiêu này sẽ được sử dụng để gửi bài kiểm tra email cho chiến dịch này. <br>Nếu bạn không có một danh sách đã sẵn sàng, một danh sách sản phẩm nào sẽ được tạo ra cho bạn.',
    'LBL_ADD_TRACKER' => 'Tạo lượt theo dõi',
    'LBL_CREATE_TARGET' => 'Tạo',
    'LBL_SELECT_TARGET' => 'Sử dụng danh sách mục tiêu hiện tại',
    'LBL_REMOVE' => 'Xóa bỏ', // PR 5451
    'LBL_START' => 'Bắt đầu',
    'LBL_TOTAL_ENTRIES' => 'Mục',
    'LBL_CONFIRM_SEND_SAVE' => 'Bạn sắp rời khỏi và chuyển sang trang Gửi Chiến dịch Email. Bạn có muốn lưu và tiếp tục không?',
    'LBL_NEWSLETTER WIZARD_TITLE' => 'Bản tin:',
    'LBL_NEWSLETTER_WIZARD_START_TITLE' => 'Chỉnh sửa bản tin:',
    'LBL_CAMPAIGN_WIZARD_START_TITLE' => 'Chỉnh sửa chiến dịch:',
    'LBL_SEND_AS_TEST' => 'Gửi Email Marketing thử nghiệm',
    'LBL_SAVE_EXIT_BUTTON_LABEL' => 'Lưu',
    'LBL_SAVE_CONTINUE_BUTTON_LABEL' => 'Tới',
    'LBL_TARGET_LISTS' => 'Các danh sách đối tượng',
    'LBL_NO_SUBS_ENTRIES_WARNING' => 'Bạn không thể gửi một email Marketing cho đến khi danh sách đăng ký của bạn có ít nhất một mục. Bạn có thể gắn vào danh sách của bạn sau khi kết thúc.',
    'LBL_NO_TARGET_ENTRIES_WARNING' => 'Bạn không thể gửi một email Marketing cho đến khi danh sách mục tiêu của bạn có ít nhất một mục. Bạn có thể gắn vào danh sách của bạn sau khi kết thúc.',
    'LBL_NO_TARGETS_WARNING' => 'Bạn không thể gửi một email Marketing cho đến khi chiến dịch của bạn có ít nhất một danh sách các mục tiêu.',
    'LBL_NO_TARGET_ENTRIES_WARNING_NON_EMAIL' => 'Bạn không có mục tiêu liên kết trong danh sách(s) mục tiêu của bạn đã chọn cho chiến dịch này. Bạn có gắn danh sách của bạn sau khi kết thúc.',
    'LBL_NO_TARGETS_WARNING_NON_EMAIL' => 'Bạn chưa chọn danh sách mục tiêu của bạn cho chiến dịch này.',
    'LBL_NONE' => 'không tạo ra',
    'LBL_CAMPAIGN_WIZARD' => 'Chiến dịch Wizard',
    'LBL_EMAIL' => 'Email',
    'LBL_OTHER_TYPE_CAMPAIGN' => 'Không có email dựa trên Chiến dịch',
    'LBL_TARGET_LIST' => 'Danh sách đối tượng',
    'LBL_TARGET_TYPE' => 'Loại danh sách mục tiêu:',
    'LBL_TARGET_NAME' => 'Tên danh sách đối tượng',
    'LBL_NUMBER_OF_TARGET' => 'Số mục tiêu',
    'LBL_EMAILS_SCHEDULED' => 'Lịch trình Email',
    'LBL_TEST_EMAILS_SENT' => 'Email kiểm tra đã gửi',
    'LBL_USERS_CANNOT_OPTOUT' => 'Người dụng hệ thống không thể chọn không tham gia nhận email.',
    'LBL_ELECTED_TO_OPTOUT' => 'Bạn đã chọn không tham gia nhận email.',
    'LBL_COPY_OF' => 'Sao chép của ',
    'LBL_SAVED_SEARCH' => 'Đã lưu tìm kiếm & giao diện',
    //email setup wizard
    'LBL_WIZ_FROM_NAME' => 'Từ tên:',
    'LBL_WIZ_FROM_ADDRESS' => 'Từ địa chỉ:',
    'LBL_EMAILS_PER_RUN' => 'Số lượng email được gửi đi mỗi loạt:',
    'LBL_CUSTOM_LOCATION' => 'Xác định người dùng',
    'LBL_DEFAULT_LOCATION' => 'Mặc định ',
    'ERR_INT_ONLY_EMAIL_PER_RUN' => 'Chỉ có giá trị số nguyên cho phép Số lượng của email được gửi cho mỗi lô',
    'LBL_LOCATION_TRACK' => 'Vị trí của File theo dõi chiến dịch (like campaign_tracker.php):',
    'LBL_MAIL_SENDTYPE' => 'Người chuyển tiếp Email:',
    'LBL_MAIL_SMTPAUTH_REQ' => 'Sử dụng xác thực SMTP không?',
    'LBL_MAIL_SMTPPASS' => 'Mật khẩu SMTP:',
    'LBL_MAIL_SMTPPORT' => 'Cổng SMTP',
    'LBL_MAIL_SMTPSERVER' => 'Máy chủ SMTP',
    'LBL_MAIL_SMTPUSER' => 'Tên người dùng SMTP',
    'LBL_EMAIL_SETUP_WIZARD_TITLE' => 'Cài đặt Email cho chiến dịch',
    'TRACKING_ENTRIES_LOCATION_DEFAULT_VALUE' => 'Value of Config.php setting site_url',
    'LBL_NOTIFY_TITLE' => 'Tùy chọn Email thông báo',
    'LBL_MASS_MAILING_TITLE' => 'Tùy chọn gửi thư hàng loạt',
    'LBL_SERVER_TYPE' => 'Giao thức Máy chủ Email',
    'LBL_SERVER_URL' => 'Địa chỉ máy chủ Thư',
    'LBL_LOGIN' => 'Tên người dùng',
    'LBL_PORT' => 'Cổng máy chủ Email',
    'LBL_MAILBOX_NAME' => 'Tên tài khoản thư:',
    'LBL_PASSWORD' => 'Mật khẩu',
    'LBL_MAILBOX_DEFAULT' => 'HỘP THƯ ĐẾN',
    'LBL_MAILBOX' => 'Thư mục theo dõi',
    'LBL_NAVIGATION_MENU_SETUP' => 'Cài đặt Email',
    'LBL_NAVIGATION_MENU_NEW_MAILBOX' => 'Tài khoản Mail mới',
    'LBL_MAILBOX_CHECK_WIZ_GOOD' => 'Đã phát hiện tài khoản(s) Mail với xử lý bị trả lại. Bạn không cần phải tạo một tài khoản mới, nhưng bạn vẫn có thể làm như vậy dưới đây.',
    'LBL_MAILBOX_CHECK_WIZ_BAD' => 'Không phát hiện thấy tài khoản mail nào có xử lý bị trả lại, vui lòng tạo một tài khoản thư mới dưới đây.',
    'LBL_CAMP_MESSAGE_COPY' => 'Giữ tin nhắn của chiến dịch:',
    'LBL_CAMP_MESSAGE_COPY_DESC' => 'Bạn có muốn giữ email <bold>EACH</bold> tin nhắn đã gửi?  <bold>Chúng tôi đề nghị không</bold>.  Chọn không sẽ chỉ lưu mẫu và các giá trị có sẵn.',
    'LBL_YES' => 'Có',
    'LBL_NO' => 'Không',
    'LBL_EMAIL_SETUP_DESC' => 'Điền vào biểu mẫu bên dưới để sửa đổi cài đặt hệ thống của bạn để có thể gửi email chiến dịch.',
    'LBL_CREATE_MAILBOX' => 'Tạo tài khoản mới',
    'LBL_SSL_DESC' => 'Nếu máy chủ thư của bạn hỗ trợ các kết nối socket an toàn, cho phép điều này sẽ buộc các kết nối SSL khi nhập email.',
    'LBL_SSL' => 'Sử dụng SSL',
    //campaign diagnostics
    'LNK_CAMPAIGN_DIGNOSTIC_LINK' => 'Chiến dịch có thể không hoạt động như mong muốn và email của bạn có thể không được gửi vì những lý do sau:',
    'LBL_CAMPAIGN_DIAGNOSTICS' => 'Chẩn đoán Chiến dịch',
    'LBL_MAILBOX_CHECK1_GOOD' => ' Các tài khoản Email với xử lý bị trả lại được phát hiện:',
    'LBL_MAILBOX_CHECK1_BAD' => 'Không có tài khoản thư nào bị phát hiện bị trả lại.',
    'LBL_MAILBOX_CHECK2_GOOD' => ' Cài đặt e-mail đã được cấu hình:',
    'LBL_MAILBOX_CHECK2_BAD' => 'Vui lòng cấu hình địa chỉ hệ thống Email của bạn. Cài đặt E-mail chưa được cấu hình hoặc không hợp lệ.',
    'LBL_SCHEDULER_CHECK_GOOD' => 'Phát hiện lịch trình',
    'LBL_SCHEDULER_CHECK_BAD' => 'Không phát hiện lịch trình',
    'LBL_SCHEDULER_CHECK1_BAD' => 'Lịch trình chưa được cài đặt để xử lý Email chiến dịch trả về.',
    'LBL_SCHEDULER_CHECK2_BAD' => 'Lịch trình chưa được cài đặt để xử lý Email chiến dịch.',
    'LBL_SCHEDULER_NAME' => 'Lịch biểu',
    'LBL_SCHEDULER_STATUS' => 'Tình trạng',
    'LBL_EMAIL_SETUP_WIZ' => 'Chạy cài đặt Email',
    'LBL_SCHEDULER_LINK' => 'vào màn hình quản trị lịch trình.',
    'LBL_TO_WIZARD_TITLE' => 'Chạy Wizard',
    'LBL_EDIT_EXISTING' => 'Sửa Chiến dịch',
    'LBL_SEND_EMAIL' => 'Gửi mail theo thời gian lịch trình',
    'LBL_CREATE_NEW_MARKETING_EMAIL' => 'Tạo Email Marketing mới',
    'LBL_NON_ADMIN_ERROR_MSG' => 'Vui lòng thông báo cho Quản trị viên Hệ thống của bạn để họ có thể sửa vấn đề này',
    'LBL_EMAIL_COMPONENTS' => 'Thành phần Email',
    'LBL_SCHEDULER_COMPONENTS' => 'Thành phần lịch trình',
    'LBL_RECHECK_BTN' => 'Kiểm tra lại',
    //web to lead wizard titles
    'LBL_DEFINE_LEAD_HEADER' => 'Form Header:',
    'LBL_LEAD_DEFAULT_HEADER' => 'Web để form đầu mối cho Chiến dịch',
    'LBL_DEFINE_LEAD_SUBMIT' => 'Nút đăng ký:',
    'LBL_DEFINE_LEAD_POST_URL' => 'Post URL:',
    'LBL_EDIT_LEAD_POST_URL' => 'Sửa Post URL?',
    'LBL_DEFINE_LEAD_REDIRECT_URL' => 'Chuyển hướng URL:',
    'LBL_LEAD_NOTIFY_CAMPAIGN' => 'Liên quan đến chiến dịch:',
    'LBL_DEFAULT_LEAD_SUBMIT' => 'Gửi',
    'LBL_WEB_TO_LEAD' => 'Tạo form cá nhân',
    'LBL_LEAD_FOOTER' => 'Form Footer:',
    'NTC_NO_LEGENDS' => 'Không có',
    'NTC_DELETE_CONFIRMATION' => 'Bạn chắc muốn xoá hoàn toàn bản ghi?',
    'LBL_DESCRIPTION_LEAD_FORM' => 'Form mô tả:',
    'LBL_DESCRIPTION_TEXT_LEAD_FORM' => 'Đăng ký biểu mẫu này sẽ tạo ra một đầu mối và liên kết với chiến dịch',
    'LBL_DOWNLOAD_TEXT_WEB_TO_LEAD_FORM' => 'Vui lòng tải từ Web Form đầu mối của bạn',
    'LBL_DOWNLOAD_WEB_TO_LEAD_FORM' => 'Web Form cá nhân',
    'LBL_PROVIDE_WEB_TO_LEAD_FORM_FIELDS' => 'Xin vui lòng cung cấp tất cả các trường bắt buộc',
    'LBL_NOT_VALID_EMAIL_ADDRESS' => 'Không phải là một địa chỉ email hợp lệ',
    'LBL_SELECT_REQUIRED_LEAD_FIELDS' => 'Vui lòng chọn các trường bắt buộc:',
    //Campaign charts
    'LBL_CAMPAIGN_RETURN_ON_INVESTMENT' => 'Chiến dịch lợi tức đầu tư',
    'LBL_CAMPAIGN_RESPONSE_BY_RECIPIENT_ACTIVITY' => 'Phản hồi của chiến dịch bởi hoạt động của người nhận',
    'LBL_LOG_ENTRIES_BLOCKEDD_TITLE' => 'Bị chặn bởi Địa chỉ Email hoặc miền',

    'LBL_AMOUNT_IN' => 'Số tiền trong ',

    // Labels for ROI Chart
    'LBL_ROI_CHART_REVENUE' => 'Doanh thu',
    'LBL_ROI_CHART_INVESTMENT' => 'Đầu tư',
    'LBL_ROI_CHART_BUDGET' => 'Ngân sách',
    'LBL_ROI_CHART_EXPECTED_REVENUE' => 'Dự kiến doanh thu',

    // Top Campaigns Dashlet
    'LBL_TOP_CAMPAIGNS' => 'Top Các Chiến dịch',
    'LBL_TOP_CAMPAIGNS_NAME' => 'Tên Chiến dịch',
    'LBL_TOP_CAMPAIGNS_REVENUE' => 'Doanh thu',
    'LBL_TOP_CAMPAIGNS_DESCRIPTION' => 'Chiến dịch thực hiện trên doanh thu',
    'LBL_LEADS' => 'Đầu mối',
    'LBL_CONTACTS' => 'Liên hệ',
    'LBL_ACCOUNTS' => 'Tài khoản',
    'LBL_OPPORTUNITIES' => 'Cơ hội',
    'LBL_CREATED_USER' => 'Người tạo',
    'LBL_MODIFIED_USER' => 'Người sửa',
    'LBL_LOG_ENTRIES' => 'Ghi nhật ký',
    'LBL_INVALID EMAIL_SUBPANEL_TITLE' => ' Email không hợp lệ',
    'LBL_SEND ERROR_SUBPANEL_TITLE' => 'Gửi lỗi',
    'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Tài khoản',
    'LBL_LEADS_SUBPANEL_TITLE' => 'Đầu mối',
    'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Cơ hội',

    'LBL_LEAD_FORM_WIZARD' => 'Form đầu mối Wizard',
    'LBL_CAMPAIGN_INFORMATION' => 'Tổng quan Chiến dịch', //No need to be translated in all caps. Translation used just in menu action items when using the SuiteP template
    'LBL_EDIT_BUTTON' => 'Chạy Wizard',
    'LBL_YEAR' => "Năm",
    'LBL_DAY' => "Ngày",
    'LBL_EDIT_LAYOUT' => 'Sửa khung' /*for 508 compliance fix*/,
    'LBL_INVALID' => 'Không hợp lệ' /*for 508 compliance fix*/,
    'LBL_VALID' => 'Hiệu lực' /*for 508 compliance fix*/,
    'LBL_ALERT' => 'Cảnh báo' /*for 508 compliance fix*/,
    'LBL_EDIT_INLINE' => 'Chạy Wizard' /*for 508 compliance fix*/,
    'LBL_DELETE_INLINE' => 'Xóa' /*for 508 compliance fix*/,
    'LBL_DELETE' => 'Xóa bỏ' /*for 508 compliance fix*/,
    'LBL_VIEW_INLINE' => 'Xem',
    'ERR_NO_OPTS_SAVED' => 'Không có giá trị tối ưu nào được lưu với tài khoản Email đến của bạn.',
    'ERR_REVIEW_EMAIL_SETTINGS' => 'Xin vui lòng xem lại cài đặt Email đến.',
    'LBL_LEADS_DELETED_SINCE_CREATED' => '{0} đầu mối đã được tạo qua chiến dịch này đã bị xóa kể từ khi tạo.',
    'LBL_FROM_NAME_HELP' => 'Đây sẽ là tên mà người nhận của bạn sẽ nhìn thấy',
    'LBL_FROM_ADDR_HELP' => 'Đây sẽ là địa chỉ từ địa chỉ mà người nhận sẽ thấy',
    'LBL_REPLY_TO_NAME_HELP' => 'Đây sẽ là tên mà người nhận của bạn sẽ trả lời',
    'LBL_REPLY_TO_ADDR_HELP' => 'Đây sẽ là email mà người nhận của bạn sẽ trả lời',
    'LBL_OUTBOUND_EMAIL_ACCOUNT_VIEW' => 'Xem các tài khoản email gửi đi',
    'LBL_CREATE_EMAIL_TEMPLATE_BTN' => 'Lưu',
    'LBL_SAVE_EMAIL_TEMPLATE_BTN' => 'Lưu',
    'LBL_SEARCH_TARGET_LIST' => 'Lọc danh sách Mục tiêu',
    'LBL_INSERT_URL_REF' => 'Chèn các tham chiếu URL',
    'LBL_INSERT_TRACKER_URL' => 'Chèn Tracker URL:',
    'LBL_CREATE_TRACKER_BTN' => 'Tạo lượt theo dõi',
    'LBL_INSERT_TRACKER_BTN' => 'Chèn Tracker',
    'LBL_EDIT_TRACKER_BTN' => 'Chỉnh sửa Tracker',
    'LBL_CREATE_TRACKER_URL' => '--Tạo--',
    'LBL_INSERT' => 'Chèn',
    'LBL_INSERT_VARIABLE' => 'Chèn:',
    'LBL_INSERT_VARIABLE_BTN' => 'Chèn biến',
    'LBL_INSERT_VARIABLE_SUBJECT_BTN' => 'Chèn biến',
    'LBL_EMAIL_VARIABLES' => 'Biến Email',
    'LBL_SAVE' => 'Lưu',
    'ERR_REQUIRED_TRACKER_NAME' => 'Tên tracker là bắt buộc',
    'ERR_REQUIRED_TRACKER_URL' => 'Tracker URL là bắt buộc',
    'LBL_UPDATE_TEMPLATE' => 'Cập Nhật mẫu',
    'LBL_ATTACHMENTS' => 'Đính kèm',
    'ERR_MISSING_REQUIRED_FIELDS' => 'Sai vùng yêu cầu',
    'LBL_SUITE_DOCUMENT' => 'Tài liệu',
    'LBL_EMAIL_ATTACHMENT' => 'Đính kèm Email',
    'LBL_PROCESS_BOUNCED_EMAILS' => 'Quá trình trả về email',
    'LBL_PROCESS_CAMPAIGN_EMAILS' => 'Quá trình chiến dịch email',
    'LBL_SENDER_DETAILS' => 'Chi tiết người gửi',
    'LBL_CHOOSE_TEMPLATES' => 'Chọn mẫu',
    'LBL_CHOOSE_TARGETS' => 'Chọn mục tiêu',
    'LBL_CAMPAIGN_DETAILS_AND_CONDITIONS' => 'Chi tiết Chiến dịch và điều kiện',
    'LBL_OPEN_IN_NEW_WINDOW' => 'Mở trong cửa sổ mới..',
    'LBL_CREATE_MARKETING_RECORD' => 'Tới',
    'LBL_NO_TEMPLATE_SELECTED' => 'Email mẫu không được chọn',
    'LBL_SELECT_TEMPLATE' => 'Mẫu thiết kế',
    'LBL_WIZARD_ADD_TARGET' => 'Thêm danh sách mục tiêu hiện tại:',
    'LBL_CLICK_TO_ADD' => 'Nhấp vào các mục(s) mẫu để thêm.',
    'LBL_CANCEL' => 'Hủy',
    'LBL_EMPTY_SUBJECT' => 'Tiêu đề Email trống. Bạn có chắc muốn tiếp tục không?',
    'LBL_OVERWRITE_QUESTION' => 'Bạn có chắc chắn muốn ghi đè lên email mẫu?',
    'LBL_SELECT_EMAIL_TRACKER' => 'Vui lòng chọn một Email Tracker.',
    'LBL_STEP_UNAVAILABLE' => 'Để xử lý hãy nhấp vào nút Tiếp theo.',
    'LBL_STEP_INFO_CAMPAIGN_HEADER' => 'Vui lòng nhập tên của chiến dịch và chọn trạng thái',
    'LBL_STEP_INFO_TARGET_LIST_NEWSLETTER' => 'Mỗi chiến dịch yêu cầu phải có danh sách mục tiêu để đăng ký, bỏ đăng ký và thử nghiệm. Khi danh sách không được chỉ định, một danh sách mục tiêu rỗng sẽ được tạo trên lưu.',
    'LBL_STEP_INFO_TARGET_LIST_NON_NEWSLETTER' => 'Chọn danh sách mục tiêu của bạn cho chiến dịch này.',
    'LBL_STEP_INFO_EMAIL_TEMPLATE' => 'Hãy chọn một mẫu Email hoặc tạo một email mẫu mới.',
    'LBL_STEP_INFO_MARKETING' => 'Vui lòng chọn tài khoản email.',
    'LBL_NO_SUBJECT' => 'Mẫu email đã chọn không có chủ đề',
    'LBL_NO_HTML_BODY_CONTENTS' => 'Mẫu email đã chọn không có một nội dung html',
    'LBL_NO_SELECTED_TEMPLATE' => 'Không có mẫu nào được chọn!',
    'LBL_NO_BODY_CONTENTS' => 'Mẫu email đã chọn không có nội dung',
    'LBL_ERROR_ON_MARKETING' => 'Thiếu trường(s) yêu cầu',

    'LBL_NO_MARKETING_NAME' => 'Tên bản ghi Marketing là trống rỗng',
    'LBL_NO_INBOUND_EMAIL_SELECTED' => 'Tài khoản email Marketing gửi đến không được chọn',
    'LBL_NO_DATE_START' => 'Bản ghi Marketing không có ngày bắt đầu',
    'LBL_NO_FROM_NAME' => 'Tên người gửi là trống',
    'LBL_NO_FROM_ADDR_OR_INVALID' => 'Địa chỉ người gửi trống hoặc không hợp lệ',
    'LBL_NEWSLETTER_TITLE' => ' Một chiến dịch bản tin là một loại chiến dịch email, nó cho phép bạn gửi một email đến một danh sách mục tiêu duy nhất.',
    'LBL_EMAIL_TITLE' => 'Một chiến dịch email là một loại chiến dịch email, cho phép bạn gửi một email đến danh sách nhiều mục tiêu.',
    'LBL_NON_EMAIL_TITLE' => 'Chiến dịch không phải email là chiến dịch không gửi email.',
    'LBL_TEMPLATE_SAVING' => 'Xin vui lòng chờ đợi, đang lưu mẫu..',
    'LBL_TEMPLATE_SAVED' => 'Lưu mẫu thành công.',
    'LBL_PLEASE_SELECT_OPTION' => 'Vui lòng chọn tùy chọn bạn thích',
    'LBL_OPTION_SELECT_TEMPLATE' => 'Chọn mẫu hiện có',
    'LBL_OPTION_CREATE_TEMPLATE' => 'Tạo một mẫu mới',
    'LBL_OPTION_COPY_TEMPLATE' => 'Sao chép mẫu hiện có',
    'LBL_SUMMARY' => 'Tóm tắt',
    'LBL_CAMPAIGN_CHECKLIST' => 'Danh sách kiểm tra chiến dịch',

    'LBL_EMAIL_MARKETING' => 'Email quảng bá',
    'LBL_QUEUE_ITEMS' => 'Mục đợi',
    'LBL_PROSPECT_LISTS' => 'Danh sách khách hàng tiềm năng',
    'LBL_SURVEYRESPONSES_CAMPAIGNS_FROM_SURVEYRESPONSES_TITLE' => 'Phản hồi khảo sát',
    'LBL_CAMPAIGN_SURVEY' => "Khảo sát",
);
