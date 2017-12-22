.class final Lcom/xiaomi/account/ui/bq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic gy:Lcom/xiaomi/account/ui/E;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/E;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bq;->gy:Lcom/xiaomi/account/ui/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bq;->gy:Lcom/xiaomi/account/ui/E;

    invoke-static {v0}, Lcom/xiaomi/account/ui/E;->er(Lcom/xiaomi/account/ui/E;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
