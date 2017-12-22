.class final Lcom/xiaomi/passport/uicontroller/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic IZ:Lcom/xiaomi/passport/uicontroller/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/v;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/x;->IZ:Lcom/xiaomi/passport/uicontroller/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/x;->IZ:Lcom/xiaomi/passport/uicontroller/v;

    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/v;->Nu(Lcom/xiaomi/passport/uicontroller/v;)Lcom/xiaomi/passport/uicontroller/w;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/x;->IZ:Lcom/xiaomi/passport/uicontroller/v;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/w;->Lb(Lcom/xiaomi/passport/uicontroller/v;)V

    return-void
.end method
