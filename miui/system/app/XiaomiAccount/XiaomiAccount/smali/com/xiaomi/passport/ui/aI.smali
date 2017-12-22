.class final Lcom/xiaomi/passport/ui/aI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic uL:Lcom/xiaomi/passport/ui/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/w;->we(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/w;->wd(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    invoke-static {v3}, Lcom/xiaomi/passport/ui/w;->wf(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/ui/aI;->uL:Lcom/xiaomi/passport/ui/w;

    invoke-static {v4}, Lcom/xiaomi/passport/ui/w;->wg(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/ui/w;->wu(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
