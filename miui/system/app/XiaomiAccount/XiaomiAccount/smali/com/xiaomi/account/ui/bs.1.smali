.class final Lcom/xiaomi/account/ui/bs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gA:Lcom/xiaomi/account/ui/F;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bs;->gA:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bs;->gA:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bs;->gA:Lcom/xiaomi/account/ui/F;

    new-instance v1, Lcom/xiaomi/account/ui/H;

    iget-object v2, p0, Lcom/xiaomi/account/ui/bs;->gA:Lcom/xiaomi/account/ui/F;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/account/ui/H;-><init>(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/H;)V

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/F;->eG(Lcom/xiaomi/account/ui/F;Lcom/xiaomi/account/ui/H;)Lcom/xiaomi/account/ui/H;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bs;->gA:Lcom/xiaomi/account/ui/F;

    invoke-static {v0}, Lcom/xiaomi/account/ui/F;->eA(Lcom/xiaomi/account/ui/F;)Lcom/xiaomi/account/ui/H;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/H;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
