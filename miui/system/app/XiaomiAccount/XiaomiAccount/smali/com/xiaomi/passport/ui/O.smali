.class final Lcom/xiaomi/passport/ui/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tl:Lcom/xiaomi/passport/ui/N;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/N;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/O;->tl:Lcom/xiaomi/passport/ui/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_LOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/O;->tl:Lcom/xiaomi/passport/ui/N;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/N;->th:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/e;->ep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/O;->tl:Lcom/xiaomi/passport/ui/N;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/N;->th:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/e;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
