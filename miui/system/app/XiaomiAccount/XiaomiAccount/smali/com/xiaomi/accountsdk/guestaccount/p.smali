.class Lcom/xiaomi/accountsdk/guestaccount/p;
.super Lcom/xiaomi/accountsdk/guestaccount/k;
.source ""


# static fields
.field private static volatile OE:Lcom/xiaomi/accountsdk/guestaccount/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/k;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static declared-synchronized Ul(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/p;
    .locals 2

    const-class v1, Lcom/xiaomi/accountsdk/guestaccount/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/p;->OE:Lcom/xiaomi/accountsdk/guestaccount/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/p;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/guestaccount/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/p;->OE:Lcom/xiaomi/accountsdk/guestaccount/p;

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/p;->OE:Lcom/xiaomi/accountsdk/guestaccount/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static Um(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.account.action.BIND_GUEST_ACCOUNT_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.xiaomi.account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public TZ(Lcom/xiaomi/accountsdk/guestaccount/f;)V
    .locals 0

    return-void
.end method

.method public Ua(Lcom/xiaomi/accountsdk/guestaccount/b;)V
    .locals 0

    return-void
.end method

.method public Ub(Lcom/xiaomi/accountsdk/guestaccount/d;)V
    .locals 0

    return-void
.end method

.method public Ud()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "don NOT call this for GuestAccountManagerImplMiui"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Ue()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "don NOT call this for GuestAccountManagerImplMiui"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected Ug(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 6

    new-instance v3, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/v;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/guestaccount/v;-><init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/v;->ajF()Z

    return-object v3
.end method

.method protected Uh(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/x;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/x;-><init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/x;->ajF()Z

    return-object v0
.end method

.method protected Ui(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 6

    new-instance v3, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/n;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/guestaccount/n;-><init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/n;->ajF()Z

    return-object v3
.end method
