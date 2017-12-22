.class final Lcom/xiaomi/account/ui/bd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic gf:Lcom/xiaomi/account/ui/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bd;->gf:Lcom/xiaomi/account/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bd;->gf:Lcom/xiaomi/account/ui/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/u;->cJ(Lcom/xiaomi/account/ui/u;ZLjava/lang/String;)V

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
