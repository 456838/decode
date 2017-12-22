.class final Lcom/xiaomi/account/ui/aC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fo:Lcom/xiaomi/account/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aC;->fo:Lcom/xiaomi/account/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aC;->fo:Lcom/xiaomi/account/ui/k;

    invoke-static {v0}, Lcom/xiaomi/account/ui/k;->aR(Lcom/xiaomi/account/ui/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aC;->fo:Lcom/xiaomi/account/ui/k;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aC;->fo:Lcom/xiaomi/account/ui/k;

    invoke-static {v1}, Lcom/xiaomi/account/ui/k;->aR(Lcom/xiaomi/account/ui/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/k;->gg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
