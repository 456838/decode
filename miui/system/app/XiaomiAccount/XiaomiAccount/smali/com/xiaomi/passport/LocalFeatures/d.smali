.class Lcom/xiaomi/passport/LocalFeatures/d;
.super Lcom/xiaomi/passport/ui/E;
.source ""


# instance fields
.field private final CE:Z

.field private final CF:Ljava/lang/String;

.field final synthetic CG:Lcom/xiaomi/passport/LocalFeatures/b;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CG:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-virtual {p1}, Lcom/xiaomi/passport/LocalFeatures/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p5}, Lcom/xiaomi/passport/ui/E;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CF:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CE:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/xiaomi/passport/LocalFeatures/d;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/passport/LocalFeatures/d;-><init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected yh()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/d;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CF:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CG:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-static {v2}, Lcom/xiaomi/passport/LocalFeatures/b;->HF(Lcom/xiaomi/passport/LocalFeatures/b;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CE:Z

    iget-object v4, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CG:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-static {v4}, Lcom/xiaomi/passport/LocalFeatures/b;->HG(Lcom/xiaomi/passport/LocalFeatures/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/passport/LocalFeatures/d;->sS:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/x;->FV(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method protected yk(Lcom/xiaomi/passport/data/d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/d;->CG:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/LocalFeatures/b;->HH(Lcom/xiaomi/passport/LocalFeatures/b;Lcom/xiaomi/passport/data/d;)V

    return-void
.end method
