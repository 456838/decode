.class final Lcom/xiaomi/passport/ui/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tQ:Lcom/xiaomi/passport/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ad;->tQ:Lcom/xiaomi/passport/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ad;->tQ:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/k;->tF()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ad;->tQ:Lcom/xiaomi/passport/ui/k;

    const-string/jumbo v1, "email_registered"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/k;->tP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ad;->tQ:Lcom/xiaomi/passport/ui/k;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/k;->tO(Lcom/xiaomi/passport/ui/k;)V

    return-void
.end method
