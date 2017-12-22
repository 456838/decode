.class final Lcom/xiaomi/account/ui/al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eN:Lcom/xiaomi/account/ui/SetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SetPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/al;->eN:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/al;->eN:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/SetPasswordActivity;->finish()V

    return-void
.end method
