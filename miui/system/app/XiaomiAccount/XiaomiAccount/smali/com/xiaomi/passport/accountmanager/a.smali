.class public Lcom/xiaomi/passport/accountmanager/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zc:J


# instance fields
.field private final zd:Lcom/xiaomi/passport/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/passport/accountmanager/a;->zc:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/utils/l;

    const-string/jumbo v1, "passport_passtoken_update_util"

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/passport/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/a;->zd:Lcom/xiaomi/passport/utils/l;

    return-void
.end method

.method private BL()Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BN()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BQ()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BO()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private BN()J
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/a;->zd:Lcom/xiaomi/passport/utils/l;

    const-string/jumbo v1, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/l;->DM(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private BO()I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/a;->zd:Lcom/xiaomi/passport/utils/l;

    const-string/jumbo v1, "frequency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/utils/l;->DL(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private BP()V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BN()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BQ()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BO()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/a;->BS(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BQ()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/accountmanager/a;->BR(J)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/a;->BS(I)V

    goto :goto_0
.end method

.method private BQ()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/passport/accountmanager/a;->zc:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private BR(J)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/a;->zd:Lcom/xiaomi/passport/utils/l;

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/passport/utils/l;->DN(Ljava/lang/String;J)V

    return-void
.end method

.method private BS(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/a;->zd:Lcom/xiaomi/passport/utils/l;

    const-string/jumbo v1, "frequency"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/utils/l;->DI(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public BM(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/accountmanager/f;->BY(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public BT(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-class v1, Lcom/xiaomi/passport/accountmanager/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/a;->BM(Lcom/xiaomi/passport/accountmanager/f;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/h;->ahE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BL()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/accountsdk/account/data/u;->Ya(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/u;->Yb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/passport/accountmanager/f;->Cf(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/a;->BP()V

    const-string/jumbo v0, "MiAccountManagerPassTok"

    const-string/jumbo v2, "passtoken updated in MiAM"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
