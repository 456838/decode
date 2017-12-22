.class final Lcom/xiaomi/passport/ui/at;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic ul:Lcom/xiaomi/passport/ui/s;

.field final synthetic um:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/at;->ul:Lcom/xiaomi/passport/ui/s;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/at;->um:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/at;->ul:Lcom/xiaomi/passport/ui/s;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/at;->um:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/s;->vl(Lcom/xiaomi/passport/ui/s;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method
