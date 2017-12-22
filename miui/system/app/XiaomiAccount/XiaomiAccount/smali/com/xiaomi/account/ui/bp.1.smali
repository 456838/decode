.class final Lcom/xiaomi/account/ui/bp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gx:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bp;->gx:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bp;->gx:Lcom/xiaomi/account/ui/SnsAccountActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bp;->gx:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gU(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bp;->gx:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->finish()V

    return-void
.end method
