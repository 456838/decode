.class public abstract Lmiui/external/a;
.super Landroid/content/ContextWrapper;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private asr:Lmiui/external/Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method aFR(Lmiui/external/Application;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Lmiui/external/a;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public aFS()Lmiui/external/Application;
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->aFV(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->aFT()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->aFW()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->aFU()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->aFX(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/a;->asr:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
