.class final Lcom/xiaomi/passport/v2/ui/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic Gc:Lcom/xiaomi/passport/v2/ui/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ao;->Gc:Lcom/xiaomi/passport/v2/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ao;->Gc:Lcom/xiaomi/passport/v2/ui/l;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/l;->Ku(Lcom/xiaomi/passport/v2/ui/l;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
