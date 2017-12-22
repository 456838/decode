.class final Lcom/xiaomi/account/ui/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eK:Lcom/xiaomi/account/ui/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ai;->eK:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/account/utils/p;->oo(Landroid/content/DialogInterface;Z)V

    return-void
.end method
