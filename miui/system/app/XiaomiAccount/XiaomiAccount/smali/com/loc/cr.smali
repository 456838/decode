.class Lcom/loc/cr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asm:Landroid/content/Context;

.field final synthetic asn:Ljava/lang/Throwable;

.field final synthetic b:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cr;->asm:Landroid/content/Context;

    iput p2, p0, Lcom/loc/cr;->b:I

    iput-object p3, p0, Lcom/loc/cr;->asn:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/loc/cr;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/cr;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cr;->asm:Landroid/content/Context;

    iget v1, p0, Lcom/loc/cr;->b:I

    invoke-static {v0, v1}, Lcom/loc/aG;->aAh(Landroid/content/Context;I)Lcom/loc/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/cr;->asm:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cr;->asn:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/loc/cr;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loc/af;->axT(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
