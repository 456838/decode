.class Lcom/xiaomi/passport/LocalFeatures/c;
.super Lcom/xiaomi/passport/ui/E;
.source ""


# instance fields
.field private final CB:Ljava/lang/String;

.field private final CC:Ljava/lang/String;

.field final synthetic CD:Lcom/xiaomi/passport/LocalFeatures/b;

.field private final password:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CD:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-virtual {p1}, Lcom/xiaomi/passport/LocalFeatures/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p6}, Lcom/xiaomi/passport/ui/E;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xiaomi/passport/LocalFeatures/c;->password:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CB:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CC:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/LocalFeatures/c;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/passport/LocalFeatures/c;-><init>(Lcom/xiaomi/passport/LocalFeatures/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected yh()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/c;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/c;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/c;->sS:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CB:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CC:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/utils/x;->FJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method protected yk(Lcom/xiaomi/passport/data/d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/c;->CD:Lcom/xiaomi/passport/LocalFeatures/b;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/LocalFeatures/b;->HH(Lcom/xiaomi/passport/LocalFeatures/b;Lcom/xiaomi/passport/data/d;)V

    return-void
.end method
