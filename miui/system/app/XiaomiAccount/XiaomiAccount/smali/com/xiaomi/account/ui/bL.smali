.class final Lcom/xiaomi/account/ui/bL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hc:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic hd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bL;->hc:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bL;->hd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bL;->hc:Lcom/xiaomi/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bL;->hc:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/LoginActivity;->fV(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/bL;->hd:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/LoginActivity;->fW(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    return-void
.end method
