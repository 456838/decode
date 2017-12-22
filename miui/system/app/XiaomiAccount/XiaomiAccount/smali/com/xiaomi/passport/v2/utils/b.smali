.class Lcom/xiaomi/passport/v2/utils/b;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private Gd:Landroid/content/Context;

.field private Ge:Landroid/content/Intent;

.field final synthetic Gf:Lcom/xiaomi/passport/v2/utils/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/v2/utils/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/b;->Gf:Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/b;->Gd:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/utils/b;->Ge:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/b;->Gd:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/b;->Ge:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
