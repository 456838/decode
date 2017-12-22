.class public final Lcom/xiaomi/accountsdk/utils/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/s;


# instance fields
.field private final ZE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/w;->ZE:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public aio()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/w;->ZE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/v;->ait(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
