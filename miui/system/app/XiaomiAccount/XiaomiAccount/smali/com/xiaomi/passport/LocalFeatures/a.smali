.class Lcom/xiaomi/passport/LocalFeatures/a;
.super Lcom/xiaomi/passport/ui/E;
.source ""


# instance fields
.field private final Cx:Ljava/lang/String;

.field final synthetic Cy:Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/a;->Cy:Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;

    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/passport/ui/E;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xiaomi/passport/LocalFeatures/a;->Cx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected yh()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/a;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/a;->Cx:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/LocalFeatures/a;->sS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/x;->FU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method protected yk(Lcom/xiaomi/passport/data/d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/a;->Cy:Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/LocalFeatures/GetStsUrlNotificationActivity;->HB(Lcom/xiaomi/passport/data/d;)V

    return-void
.end method
