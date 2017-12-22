.class final Lcom/xiaomi/passport/v2/ui/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/h;


# instance fields
.field final synthetic Fx:Lcom/xiaomi/passport/v2/ui/g;

.field final synthetic Fy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ad;->Fx:Lcom/xiaomi/passport/v2/ui/g;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/ad;->Fy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yA(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ad;->Fx:Lcom/xiaomi/passport/v2/ui/g;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ad;->Fy:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/v2/ui/g;->JN(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void
.end method
