.class final Lcom/xiaomi/account/ui/bo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gw:Lcom/xiaomi/account/ui/bn;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bo;->gw:Lcom/xiaomi/account/ui/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bo;->gw:Lcom/xiaomi/account/ui/bn;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->eb(Lcom/xiaomi/account/ui/SnsAccountActivity;Z)V

    return-void
.end method
