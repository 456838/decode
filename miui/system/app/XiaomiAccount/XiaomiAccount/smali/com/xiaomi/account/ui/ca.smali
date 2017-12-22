.class final Lcom/xiaomi/account/ui/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hu:Lcom/xiaomi/account/ui/N;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/N;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ca;->hu:Lcom/xiaomi/account/ui/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/ca;->hu:Lcom/xiaomi/account/ui/N;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/N;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
