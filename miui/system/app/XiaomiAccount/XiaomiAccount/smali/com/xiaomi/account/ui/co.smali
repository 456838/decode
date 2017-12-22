.class final Lcom/xiaomi/account/ui/co;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hO:Lcom/xiaomi/account/ui/U;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/co;->hO:Lcom/xiaomi/account/ui/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/co;->hO:Lcom/xiaomi/account/ui/U;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Ra:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/U;->hZ(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    return-void
.end method
