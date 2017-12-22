.class public Lcom/loc/bm;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static aqv:Lcom/loc/bm;


# instance fields
.field protected aqw:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bm;->c:Z

    return-void
.end method

.method public static aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/loc/bm;->aqv:Lcom/loc/bm;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/bm;->auc(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected aub(Lcom/loc/O;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected auc(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected aud(Landroid/content/Context;Lcom/loc/O;Z)V
    .locals 0

    return-void
.end method
