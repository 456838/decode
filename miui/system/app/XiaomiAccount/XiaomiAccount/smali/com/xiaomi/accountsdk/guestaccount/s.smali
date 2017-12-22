.class Lcom/xiaomi/accountsdk/guestaccount/s;
.super Lcom/xiaomi/accountsdk/guestaccount/k;
.source ""


# static fields
.field private static volatile OL:Lcom/xiaomi/accountsdk/guestaccount/s;


# instance fields
.field private OI:Lcom/xiaomi/accountsdk/guestaccount/f;

.field private final OJ:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field private final OK:Lcom/xiaomi/accountsdk/guestaccount/A;

.field private final OM:Lcom/xiaomi/accountsdk/guestaccount/B;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/A;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/A;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/B;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/B;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/s;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;Lcom/xiaomi/accountsdk/guestaccount/A;Lcom/xiaomi/accountsdk/guestaccount/B;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;Lcom/xiaomi/accountsdk/guestaccount/A;Lcom/xiaomi/accountsdk/guestaccount/B;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/k;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onlineFetcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "storage == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OJ:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OK:Lcom/xiaomi/accountsdk/guestaccount/A;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    return-void
.end method

.method static Uo(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static Up(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static declared-synchronized Uq(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/s;
    .locals 2

    const-class v1, Lcom/xiaomi/accountsdk/guestaccount/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/s;->OL:Lcom/xiaomi/accountsdk/guestaccount/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/s;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/s;->OL:Lcom/xiaomi/accountsdk/guestaccount/s;

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/s;->OL:Lcom/xiaomi/accountsdk/guestaccount/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Ur(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/B;->UR(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/B;->UQ(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Up(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    new-instance v2, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v2, "getGuestAccount from cache"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uo(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "GuestAccountManagerApp"

    const-string/jumbo v2, "getGuestAccount from login"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/m;

    invoke-direct {v1, p0, p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/m;-><init>(Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/m;->Un()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "getGuestAccount from register"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/t;

    invoke-direct {v0, p0, p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/t;-><init>(Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/t;->Un()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Us(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OJ:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-object v0
.end method

.method static synthetic Ut(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/A;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OK:Lcom/xiaomi/accountsdk/guestaccount/A;

    return-object v0
.end method

.method static synthetic Uu(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/B;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    return-object v0
.end method


# virtual methods
.method public TZ(Lcom/xiaomi/accountsdk/guestaccount/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OI:Lcom/xiaomi/accountsdk/guestaccount/f;

    return-void
.end method

.method public Ua(Lcom/xiaomi/accountsdk/guestaccount/b;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OK:Lcom/xiaomi/accountsdk/guestaccount/A;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/A;->UC(Lcom/xiaomi/accountsdk/guestaccount/b;)V

    return-void
.end method

.method public Ub(Lcom/xiaomi/accountsdk/guestaccount/d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OK:Lcom/xiaomi/accountsdk/guestaccount/A;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/A;->UD(Lcom/xiaomi/accountsdk/guestaccount/d;)V

    return-void
.end method

.method public Ud()V
    .locals 3

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "restoreFromBackup called."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OI:Lcom/xiaomi/accountsdk/guestaccount/f;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "null backup util. Bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/s;->TY()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->get()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tl()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "already has account. Can not restore. Bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OI:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/f;->ju()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uo(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "fail to checkPassToken. Can not restore from backup. Bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/guestaccount/B;->US(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountManagerApp"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public Ue()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OI:Lcom/xiaomi/accountsdk/guestaccount/f;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "null backup util. Bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/B;->UP(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Uo(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "GuestAccountManagerApp"

    const-string/jumbo v1, "fail to checkPassToken. Can not save to backup. Bail."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OI:Lcom/xiaomi/accountsdk/guestaccount/f;

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/f;->jx(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method protected Ug(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Ur(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method protected Uh(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 4

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->OM:Lcom/xiaomi/accountsdk/guestaccount/B;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/s;->Ou:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/guestaccount/B;->UP(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->ajC(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected Ui(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Ur(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method
