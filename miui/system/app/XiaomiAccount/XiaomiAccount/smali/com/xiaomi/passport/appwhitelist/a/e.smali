.class public final Lcom/xiaomi/passport/appwhitelist/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Kk:Ljava/lang/String;

.field private Kl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic NP(Lcom/xiaomi/passport/appwhitelist/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/e;->Kk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic NQ(Lcom/xiaomi/passport/appwhitelist/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/e;->Kl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public NN(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/appwhitelist/a/e;->Kl:Ljava/lang/String;

    return-object p0
.end method

.method public NO(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/appwhitelist/a/e;->Kk:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/appwhitelist/a/a;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/appwhitelist/a/a;-><init>(Lcom/xiaomi/passport/appwhitelist/a/e;Lcom/xiaomi/passport/appwhitelist/a/a;)V

    return-object v0
.end method
