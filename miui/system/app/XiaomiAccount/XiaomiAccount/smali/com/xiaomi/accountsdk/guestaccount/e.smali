.class public Lcom/xiaomi/accountsdk/guestaccount/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Oh:Ljava/lang/String;

.field public final Oi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Oj:Ljava/lang/String;

.field public final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->Oh:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->Oj:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    return-void
.end method
