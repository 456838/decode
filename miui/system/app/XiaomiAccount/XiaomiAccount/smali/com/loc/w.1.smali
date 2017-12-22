.class Lcom/loc/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akU:Lcom/loc/aT;


# direct methods
.method constructor <init>(Lcom/loc/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/w;->akU:Lcom/loc/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
