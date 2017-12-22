.class final Lcom/xiaomi/passport/ui/al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic tZ:Lcom/xiaomi/passport/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/al;->tZ:Lcom/xiaomi/passport/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/al;->tZ:Lcom/xiaomi/passport/ui/p;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/al;->tZ:Lcom/xiaomi/passport/ui/p;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/p;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/p;->uF(Lcom/xiaomi/passport/ui/p;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
