.class Lcom/loc/aN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/loc/bz;


# instance fields
.field private anY:Lcom/loc/bI;

.field final synthetic anZ:Lcom/loc/af;


# direct methods
.method constructor <init>(Lcom/loc/af;Lcom/loc/bI;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aN;->anZ:Lcom/loc/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/aN;->anY:Lcom/loc/bI;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/loc/aN;->anY:Lcom/loc/bI;

    iget-object v1, p0, Lcom/loc/aN;->anZ:Lcom/loc/af;

    invoke-virtual {v1}, Lcom/loc/af;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/loc/bI;->aEx(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
