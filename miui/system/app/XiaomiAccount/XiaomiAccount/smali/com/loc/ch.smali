.class Lcom/loc/ch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic arU:Lcom/loc/aT;


# direct methods
.method constructor <init>(Lcom/loc/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ch;->arU:Lcom/loc/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ch;->arU:Lcom/loc/aT;

    invoke-static {v0}, Lcom/loc/aT;->aCc(Lcom/loc/aT;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
