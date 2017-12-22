.class final Lcom/xiaomi/account/ui/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fl:Lcom/xiaomi/account/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/az;->fl:Lcom/xiaomi/account/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/az;->fl:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
