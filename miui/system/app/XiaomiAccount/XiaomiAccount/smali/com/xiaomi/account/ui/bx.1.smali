.class final Lcom/xiaomi/account/ui/bx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gF:Lcom/xiaomi/account/ui/I;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/I;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bx;->gF:Lcom/xiaomi/account/ui/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bx;->gF:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bx;->gF:Lcom/xiaomi/account/ui/I;

    invoke-static {v1}, Lcom/xiaomi/account/ui/I;->ff(Lcom/xiaomi/account/ui/I;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fl(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    return-void
.end method
