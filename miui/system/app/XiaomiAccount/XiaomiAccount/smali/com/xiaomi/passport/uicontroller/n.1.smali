.class public Lcom/xiaomi/passport/uicontroller/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile II:Lcom/xiaomi/passport/uicontroller/u;


# instance fields
.field private final IJ:Ljava/lang/String;

.field private final IK:Ljava/lang/String;

.field private final IL:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/uicontroller/u;->IX:Lcom/xiaomi/passport/uicontroller/u;

    sput-object v0, Lcom/xiaomi/passport/uicontroller/n;->II:Lcom/xiaomi/passport/uicontroller/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/n;->IL:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/n;->IJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/n;->IK:Ljava/lang/String;

    return-void
.end method

.method public static Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/uicontroller/n;->II:Lcom/xiaomi/passport/uicontroller/u;

    const-string/jumbo v1, "com.xiaomi.account.action.UI_CONTROLLER_SERVICE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/xiaomi/passport/uicontroller/u;->No(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Nk(Lcom/xiaomi/passport/uicontroller/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/n;->IJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Nl(Lcom/xiaomi/passport/uicontroller/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/n;->IK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Nm(Lcom/xiaomi/passport/uicontroller/n;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/n;->IL:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/uicontroller/g;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/g;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/s;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/s;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/uicontroller/s;->ajF()Z

    return-object v0
.end method

.method public Ng(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/h;)Lcom/xiaomi/passport/uicontroller/c;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/uicontroller/c;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/c;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/p;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/p;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/uicontroller/p;->ajF()Z

    return-object v0
.end method

.method public Nh(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/j;)Lcom/xiaomi/passport/uicontroller/e;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/uicontroller/e;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/e;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/r;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/r;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/uicontroller/r;->ajF()Z

    return-object v0
.end method

.method public Ni(Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/k;)Lcom/xiaomi/passport/uicontroller/f;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/uicontroller/f;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/f;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/t;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/t;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/uicontroller/t;->ajF()Z

    return-object v0
.end method

.method public Nj(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;Lcom/xiaomi/passport/uicontroller/i;)Lcom/xiaomi/passport/uicontroller/d;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/uicontroller/d;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/d;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/q;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/q;-><init>(Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/passport/uicontroller/n;Lcom/xiaomi/accountsdk/a/a;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/uicontroller/q;->ajF()Z

    return-object v0
.end method
