.class final Lcom/xiaomi/passport/widget/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yT:Lcom/xiaomi/passport/widget/h;

.field final synthetic yU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/t;->yT:Lcom/xiaomi/passport/widget/h;

    iput-object p2, p0, Lcom/xiaomi/passport/widget/t;->yU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/t;->yT:Lcom/xiaomi/passport/widget/h;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/h;->zN(Lcom/xiaomi/passport/widget/h;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/xiaomi/passport/widget/t;->yU:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/t;->yT:Lcom/xiaomi/passport/widget/h;

    invoke-static {v0}, Lcom/xiaomi/passport/widget/h;->zN(Lcom/xiaomi/passport/widget/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/t;->yT:Lcom/xiaomi/passport/widget/h;

    invoke-static {v1}, Lcom/xiaomi/passport/widget/h;->zN(Lcom/xiaomi/passport/widget/h;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
