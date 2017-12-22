.class public abstract Lcom/xiaomi/passport/uicontroller/b;
.super Lcom/xiaomi/accountsdk/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelDataType:",
        "Ljava/lang/Object;",
        "UIDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/a/a",
        "<TModelDataType;TUIDataType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/uicontroller/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/m",
            "<TUIDataType;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/a/a;-><init>(Lcom/xiaomi/accountsdk/a/b;)V

    return-void
.end method


# virtual methods
.method protected final LL(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelDataType;)TUIDataType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/b;->Na(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract Na(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelDataType;)TUIDataType;"
        }
    .end annotation
.end method
