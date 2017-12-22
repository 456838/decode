.class public Lmiui/cloud/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final atA:Ljava/lang/String;

.field public static final atB:Ljava/lang/String;

.field public static final atC:Ljava/lang/String;

.field public static final atD:Ljava/lang/String;

.field public static final atE:Ljava/lang/String;

.field public static final atF:Ljava/lang/String;

.field public static final atG:Ljava/lang/String;

.field public static final atH:Ljava/lang/String;

.field public static final atI:Ljava/lang/String;

.field public static final atJ:Ljava/lang/String;

.field public static final atK:Ljava/lang/String;

.field public static final atL:Ljava/lang/String;

.field public static final atM:Ljava/lang/String;

.field public static final atN:Ljava/lang/String;

.field public static final atO:Ljava/lang/String;

.field public static final atP:Ljava/lang/String;

.field public static final atQ:Ljava/lang/String;

.field public static final atR:Ljava/lang/String;

.field public static final atS:Ljava/lang/String;

.field public static final atT:Ljava/lang/String;

.field public static final atU:Ljava/lang/String;

.field public static final atV:Z

.field private static atW:Ljava/lang/String;

.field private static final atv:Ljava/lang/Object;

.field private static final atw:Ljava/lang/Object;

.field public static final atx:Ljava/lang/String;

.field public static final aty:Ljava/lang/String;

.field public static final atz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/b;->Vo:Z

    sput-boolean v0, Lmiui/cloud/a;->atV:Z

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://account.preview.n.xiaomi.net/pass"

    :goto_0
    sput-object v0, Lmiui/cloud/a;->atB:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://api.account.preview.n.xiaomi.net/pass"

    :goto_1
    sput-object v0, Lmiui/cloud/a;->atE:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "http://api.account.preview.n.xiaomi.net/pass"

    :goto_2
    sput-object v0, Lmiui/cloud/a;->atF:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "http://api.account.preview.n.xiaomi.net/pass/v2"

    :goto_3
    sput-object v0, Lmiui/cloud/a;->atz:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "http://ac.account.preview.n.xiaomi.net/pass/activation"

    :goto_4
    sput-object v0, Lmiui/cloud/a;->atx:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "http://ac.account.preview.nxiaomi.net/pass/passportapi"

    :goto_5
    sput-object v0, Lmiui/cloud/a;->aty:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "http://api.account.preview.n.xiaomi.net/pass/v3"

    :goto_6
    sput-object v0, Lmiui/cloud/a;->atA:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "http://account.preview.n.xiaomi.net/oauth2/"

    :goto_7
    sput-object v0, Lmiui/cloud/a;->atC:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "http://open.account.preview.n.xiaomi.net/third/"

    :goto_8
    sput-object v0, Lmiui/cloud/a;->atQ:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "http://api.account.preview.n.xiaomi.net/pass/v2/safe"

    :goto_9
    sput-object v0, Lmiui/cloud/a;->atD:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "http://api.micloud.preview.n.xiaomi.net"

    :goto_a
    sput-object v0, Lmiui/cloud/a;->atR:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_b
    sput-object v0, Lmiui/cloud/a;->atH:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "http://micardapi.micloud.preview.n.xiaomi.net"

    :goto_c
    sput-object v0, Lmiui/cloud/a;->atL:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_d
    sput-object v0, Lmiui/cloud/a;->atN:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_e
    sput-object v0, Lmiui/cloud/a;->atK:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_f
    sput-object v0, Lmiui/cloud/a;->atJ:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_10
    sput-object v0, Lmiui/cloud/a;->atT:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_11
    sput-object v0, Lmiui/cloud/a;->atP:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_12
    sput-object v0, Lmiui/cloud/a;->atO:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_13
    sput-object v0, Lmiui/cloud/a;->atG:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "http://micloud.preview.n.xiaomi.net"

    :goto_14
    sput-object v0, Lmiui/cloud/a;->atU:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "http://api.device.preview.n.xiaomi.net"

    :goto_15
    sput-object v0, Lmiui/cloud/a;->atI:Ljava/lang/String;

    sget-boolean v0, Lmiui/cloud/a;->atV:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    :goto_16
    sput-object v0, Lmiui/cloud/a;->atM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/b;->Vn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/user/%s/accessToken/full/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/a;->atS:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/cloud/a;->atw:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/cloud/a;->atv:Ljava/lang/Object;

    return-void

    :cond_0
    const-string/jumbo v0, "https://account.xiaomi.com/pass"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "http://api.account.xiaomi.com/pass"

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "https://api.account.xiaomi.com/pass"

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v0, "http://api.account.xiaomi.com/pass/v2"

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v0, "http://ac.account.xiaomi.com/pass/activation"

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v0, "http://ac.account.xiaomi.com/pass/passportapi"

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v0, "http://api.account.xiaomi.com/pass/v3"

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v0, "https://account.xiaomi.com/oauth2/"

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v0, "https://open.account.xiaomi.com/third/"

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v0, "http://api.account.xiaomi.com/pass/v2/safe"

    goto/16 :goto_9

    :cond_a
    const-string/jumbo v0, "http://fileapi.micloud.xiaomi.net"

    goto/16 :goto_a

    :cond_b
    const-string/jumbo v0, "http://contactapi.micloud.xiaomi.net"

    goto/16 :goto_b

    :cond_c
    const-string/jumbo v0, "http://micardapi.micloud.xiaomi.net"

    goto/16 :goto_c

    :cond_d
    const-string/jumbo v0, "http://smsapi.micloud.xiaomi.net"

    goto/16 :goto_d

    :cond_e
    const-string/jumbo v0, "http://galleryapi.micloud.xiaomi.net"

    goto/16 :goto_e

    :cond_f
    const-string/jumbo v0, "http://findapi.micloud.xiaomi.net"

    goto/16 :goto_f

    :cond_10
    const-string/jumbo v0, "http://wifiapi.micloud.xiaomi.net"

    goto/16 :goto_10

    :cond_11
    const-string/jumbo v0, "http://noteapi.micloud.xiaomi.net"

    goto/16 :goto_11

    :cond_12
    const-string/jumbo v0, "http://musicapi.micloud.xiaomi.net"

    goto/16 :goto_12

    :cond_13
    const-string/jumbo v0, "http://phonecallapi.micloud.xiaomi.net"

    goto/16 :goto_13

    :cond_14
    const-string/jumbo v0, "http://wifisharingapi.micloud.xiaomi.net"

    goto/16 :goto_14

    :cond_15
    const-string/jumbo v0, "http://api.device.xiaomi.net"

    goto/16 :goto_15

    :cond_16
    const-string/jumbo v0, "http://statusapi.micloud.xiaomi.net"

    goto/16 :goto_16
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aHw(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "he"

    return-object v0

    :cond_1
    const-string/jumbo v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "id"

    return-object v0

    :cond_2
    const-string/jumbo v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "yi"

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static aHx()Ljava/lang/String;
    .locals 3

    sget-object v0, Lmiui/cloud/a;->atW:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.product.mod_device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " E/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, " L/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lmiui/cloud/a;->aHw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    const-string/jumbo v1, " LO/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/a;->atW:Ljava/lang/String;

    :cond_1
    sget-object v0, Lmiui/cloud/a;->atW:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
