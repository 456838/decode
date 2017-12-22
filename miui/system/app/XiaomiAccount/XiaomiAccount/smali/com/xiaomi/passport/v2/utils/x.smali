.class final Lcom/xiaomi/passport/v2/utils/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/g;


# instance fields
.field final synthetic Hc:Lcom/xiaomi/passport/v2/utils/w;

.field final synthetic Hd:Lcom/xiaomi/passport/uicontroller/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/w;Lcom/xiaomi/passport/uicontroller/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/x;->Hc:Lcom/xiaomi/passport/v2/utils/w;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/x;->Hd:Lcom/xiaomi/passport/uicontroller/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/x;->Hd:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/B;->KN(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method
