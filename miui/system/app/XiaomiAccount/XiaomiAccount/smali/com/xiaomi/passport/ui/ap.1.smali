.class final Lcom/xiaomi/passport/ui/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ug:Lcom/xiaomi/passport/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ap;->ug:Lcom/xiaomi/passport/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/ap;->ug:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/b;->Ik(Landroid/os/Bundle;)Lcom/xiaomi/passport/v2/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ap;->ug:Lcom/xiaomi/passport/ui/p;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/p;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->tQ(Lcom/xiaomi/passport/ui/m;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/ap;->ug:Lcom/xiaomi/passport/ui/p;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method
