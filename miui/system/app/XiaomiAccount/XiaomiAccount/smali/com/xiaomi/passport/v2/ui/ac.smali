.class final Lcom/xiaomi/passport/v2/ui/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Fw:Lcom/xiaomi/passport/v2/ui/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    const-string/jumbo v1, "visit_downLink_reg_page"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/g;->JP(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    const-string/jumbo v1, "switch_to_reg"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->JO(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/ui/g;->JM(Lcom/xiaomi/passport/v2/ui/g;)Lcom/xiaomi/passport/ui/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->JF(Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/g;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ac;->Fw:Lcom/xiaomi/passport/v2/ui/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method
